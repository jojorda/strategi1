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

class PenyeberanganOperatorController extends GetxController {
  final ModaRepository _modaRepository;
  final StrategiRepository _strategiRepository;

  PenyeberanganOperatorController(
      this._modaRepository, this._strategiRepository);

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
  Rx<List<Operator>> currentListOperatorData = Rx<List<Operator>>([]);
  RxString currentSearchOperator = ''.obs;

  @override
  void onInit() {
    initDate();

    fetchData(true);
    ever(currentEvent, (_) => fetchData(true));
    ever(isRoutine, (_) => fetchData(false));
    ever(selectedFilter, (_) => fetchData(false));
    ever(selectedRoutineRange, (_) => fetchData(true));
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
    _strategiRepository.getEvent(EventType.asdp).listen((events) {
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
    if ((routineListOperatorData.value.isEmpty ||
            routineListOperatorData.value.isEmpty) &&
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
              )
            : ModaOperatorRequest(
                event: event?.id.toString(),
              ),
        search.trim().isNotEmpty ? search : null,
      );
      // print('result: $result');
      if (isRoutine.value) {
        routineListOperatorData.value = result;
        currentListOperatorData.value = routineListOperatorData.value;
      } else {
        seasonalListOperatorData.value = result;
        currentListOperatorData.value = seasonalListOperatorData.value;
      }
      isLoadingOperatorsData.value = false;
    } catch (e) {
      if (isRoutine.value) {
        routineListOperatorData.value = [];
        currentListOperatorData.value = routineListOperatorData.value;
      } else {
        seasonalListOperatorData.value = [];
        currentListOperatorData.value = seasonalListOperatorData.value;
      }
      debugPrint('Failed to fetch operators data: ${e.toString()}');
      isLoadingOperatorsData.value = false;
    }
  }

  void searchOperator(String query) {
    currentSearchOperator.value = query;
    debounce(
      currentSearchOperator,
      (_) {
        getOperatorsData(isRefresh: true, search: currentSearchOperator.value);
      },
      time: Duration(milliseconds: 500),
    );
  }

  var currentSortOrder = 'asc'.obs; // Default to 'asc'

  // Method to sort operator data
  void sortOperatorData(String sortOrder) {
    currentSortOrder.value = sortOrder; // Update the sort order

    // Sort the data based on the sortOrder ('asc' or 'desc')
    if (sortOrder == 'asc') {
      // Sort in ascending order, null-safe comparison
      currentListOperatorData.value.sort((a, b) {
        return (a.name ?? '')
            .compareTo(b.name ?? ''); // Fallback to empty string if null
      });
    } else {
      // Sort in descending order, null-safe comparison
      currentListOperatorData.value.sort((a, b) {
        return (b.name ?? '')
            .compareTo(a.name ?? ''); // Fallback to empty string if null
      });
    }

    update(); // Update the UI
  }

  // Example data variable
  var currentListOperatorDatas = <Operator>[].obs;
}
