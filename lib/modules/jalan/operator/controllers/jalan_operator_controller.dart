import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/data/models/enum/data_type.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/data/models/request/moda_operator_request.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/domain/entities/operator.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class JalanOperatorController extends GetxController {
  final ModaRepository _modaRepository;
  final StrategiRepository _strategiRepository;

  // Flag to track if controller has been initialized
  bool initialized = false;

  JalanOperatorController(this._modaRepository, this._strategiRepository);

  RxBool isRoutine = false.obs;
  RxInt selectedFilter = 2.obs;
  Rx<List<DateTime>> selectedRoutineRange = Rx<List<DateTime>>([]);
  Rx<Event?> currentEvent = Rx<Event?>(null);
  Rx<List<Event>?> eventList = Rx<List<Event>?>(null);
  RxString eventType = RxString("");

  RxInt groupValue = 1.obs;
  RxString selectedDateRange = ''.obs;

  // Operators Data
  RxBool isLoadingOperatorsData = false.obs;
  Rx<List<Operator>> seasonalListOperatorData = Rx<List<Operator>>([]);
  Rx<List<Operator>> routineListOperatorData = Rx<List<Operator>>([]);

  // Search related variables
  RxString currentSearchOperator = ''.obs;
  Rx<List<Operator>> filteredSeasonalOperators = Rx<List<Operator>>([]);
  Rx<List<Operator>> filteredRoutineOperators = Rx<List<Operator>>([]);
  RxString sortType = 'asc'.obs;
  RxString currentSortType = 'asc'.obs;

  @override
  void onInit() {
    if (initialized) return;
    
    initDate();

    ever(currentEvent, (_) => fetchData(true));
    ever(isRoutine, (_) => fetchData(false));
    ever(selectedFilter, (_) => fetchData(false));
    ever(selectedRoutineRange, (_) => fetchData(true));

    // Initialize filtered lists
    filteredSeasonalOperators.value = seasonalListOperatorData.value;
    filteredRoutineOperators.value = routineListOperatorData.value;
    
    // Mark as initialized
    initialized = true;

    super.onInit();
  }

  void fetchData(bool isRefresh) {
    getOperatorsData(isRefresh: isRefresh);
  }

  void initDate() {
    final initialDate = [
      DateTime(DateTime.now().year, DateTime.now().month, 1),
      DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime(DateTime.now().year, DateTime.now().month + 1, 1)
            .subtract(Duration(days: 1))
            .day,
      ),
    ];

    final initialDateString =
        "${DateFormat('dd MMM yyy').tryFormat(initialDate[0])} - ${DateFormat('dd MMM yyy').tryFormat(initialDate[1])}";

    selectedRoutineRange.value = initialDate;
    selectedDateRange.value = initialDateString;
  }

  void updateFilterDate(DateTime? firstDate, DateTime? lastDate) {
    if (firstDate != null) {
      final def = defDate(firstDate);
      final lstDate = lastDate ?? def;
      selectedRoutineRange.value = [firstDate, lstDate];
    }
  }

  Future<Event?> getEvent() async {
    if (currentEvent.value != null) return currentEvent.value;
    if (eventList.value != null) {
      return currentEvent.value = eventList.value?.firstOrNull;
    }

    final completer = Completer<Event>();
    bool isCompleted = false; // Flag to track completion
    _strategiRepository.getEvent(EventType.jalan).listen((events) {
      eventList.value = events;
      currentEvent.value = events.firstOrNull;
      if (!isCompleted) {
        completer.complete(currentEvent.value);
        isCompleted = true; // Set the flag to true
      }
    });

    return completer.future;
  }

  DateTime defDate(DateTime firstDate) {
    switch (selectedFilter.value) {
      case 1:
        return firstDate.add(Duration(days: 6));
      case 2:
        return DateTime(firstDate.year, firstDate.month + 1, 0);
      case 3:
        return DateTime(firstDate.year, 12, 31);
      default:
        return DateTime(firstDate.year, firstDate.month, 1);
    }
  }

  void getOperatorsData({bool isRefresh = false, String search = ''}) async {
    if (isLoadingOperatorsData.value) return;

    if ((routineListOperatorData.value.isNotEmpty &&
            seasonalListOperatorData.value.isNotEmpty) &&
        !isRefresh) {
      return;
    }

    try {
      isLoadingOperatorsData.value = true;
      final event = await getEvent();
      final result = await _modaRepository.getOperatorList(
        ModaType.jalan,
        isRoutine.value ? DataType.routine : DataType.seasonal,
        isRoutine.value
            ? ModaOperatorRequest(
                dateStart: selectedRoutineRange.value[0],
                dateEnd: selectedRoutineRange.value[1],
                sortColumn: 'name',
                sortDirection: sortType.value,
              )
            : ModaOperatorRequest(
                event: event?.id.toString(),
                sortColumn: 'name',
                sortDirection: sortType.value,
              ),
        search.trim().isNotEmpty ? search : null,
      );
      if (isRoutine.value) {
        routineListOperatorData.value = result;
        filteredRoutineOperators.value = result;
      } else {
        seasonalListOperatorData.value = result;
        filteredSeasonalOperators.value = result;
      }
    } catch (e) {
      if (isRoutine.value) {
        routineListOperatorData.value = [];
        filteredRoutineOperators.value = [];
      } else {
        seasonalListOperatorData.value = [];
        filteredSeasonalOperators.value = [];
      }
      debugPrint('Failed to fetch operators data: ${e.toString()}');
    } finally {
      isLoadingOperatorsData.value = false;
    }
  }

  void applySort() {
    currentSortType.value = sortType.value;
    getOperatorsData(isRefresh: true, search: currentSearchOperator.value);
  }

  // New method to filter operators locally based on search query
  void _filterOperatorsByName(String query) {
    if (query.isEmpty) {
      // If query is empty, show all operators
      filteredRoutineOperators.value = routineListOperatorData.value;
      filteredSeasonalOperators.value = seasonalListOperatorData.value;
    } else {
      // Filter routine operators
      filteredRoutineOperators.value = routineListOperatorData.value
          .where((operator) =>
              (operator.name ?? '').toLowerCase().contains(query.toLowerCase()))
          .toList();

      // Filter seasonal operators
      filteredSeasonalOperators.value = seasonalListOperatorData.value
          .where((operator) =>
              (operator.name ?? '').toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }

  void searchOperator(String query) {
    currentSearchOperator.value = query;
    _filterOperatorsByName(query);
    debounce(
      currentSearchOperator,
      (_) {
        getOperatorsData(isRefresh: true, search: currentSearchOperator.value);
      },
      time: Duration(milliseconds: 500),
    );
  }
}
