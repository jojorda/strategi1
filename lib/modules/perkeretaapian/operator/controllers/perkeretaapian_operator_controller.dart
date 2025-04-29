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

class PerkeretaapianOperatorController extends GetxController {
  final ModaRepository _modaRepository;
  final StrategiRepository _strategiRepository;

  PerkeretaapianOperatorController(
    this._modaRepository,
    this._strategiRepository,
  );

  RxBool isRoutine = false.obs;
  RxInt selectedFilter = 2.obs;
  Rx<List<DateTime>> selectedRoutineRange = Rx<List<DateTime>>([]);
  Rx<Event?> currentEvent = Rx<Event?>(null);
  Rx<List<Event>?> eventList = Rx<List<Event>?>(null);
  RxString eventType = RxString("");

  RxInt groupValue = 1.obs;
  RxString selectedDateRange = ''.obs;

  RxString sortBy = "name_asc".obs;
  RxString currentSortBy = "name_asc".obs;

  // Operators Data
  RxBool isLoadingOperatorsData = false.obs;
  Rx<List<Operator>> seasonalListOperatorData = Rx<List<Operator>>([]);
  Rx<List<Operator>> routineListOperatorData = Rx<List<Operator>>([]);
  Rx<List<Operator>> currentListOperatorData = Rx<List<Operator>>([]);
  RxString currentSearchOperator = ''.obs;

  @override
  void onInit() {
    initDate();

    ever(currentEvent, (_) => fetchData(true));
    ever(isRoutine, (_) => fetchData(false));
    ever(selectedFilter, (_) => fetchData(false));
    ever(selectedRoutineRange, (_) => fetchData(true));
    debounce(
      currentSearchOperator,
      (_) {
        getOperatorsData(isRefresh: true, search: currentSearchOperator.value);
      },
      time: Duration(milliseconds: 500),
    );
    super.onInit();
  }

  void fetchData(bool isRefresh) {
    getOperatorsData(isRefresh: isRefresh, search: currentSearchOperator.value);
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
    _strategiRepository.getEvent(EventType.stasiun).listen((events) {
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
      case 0:
        return firstDate.add(Duration(days: 6));
      case 1:
        return DateTime(firstDate.year, firstDate.month + 1, 0);
      case 3:
        return DateTime(firstDate.year, 12, 31);
      default:
        return DateTime(firstDate.year, firstDate.month, 1);
    }
  }

  String getColumnSorting({bool isSortType = false}) {
    final filter = currentSortBy.value;
    final list = filter.split('_');
    if (isSortType) {
      return list[1];
    }
    switch (list[0]) {
      case 'name':
        return 'name';
      case 'otp':
        return 'otpRate';
      default:
        return list[0];
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
      final sortType = getColumnSorting(isSortType: true);
      final sortColumn = getColumnSorting();
      isLoadingOperatorsData.value = true;
      final event = await getEvent();
      final result = await _modaRepository.getOperatorList(
        ModaType.stasiun,
        isRoutine.value ? DataType.routine : DataType.seasonal,
        isRoutine.value
            ? ModaOperatorRequest(
                dateStart: selectedRoutineRange.value[0],
                dateEnd: selectedRoutineRange.value[1],
                sortColumn: sortColumn,
                sortDirection: sortType,
              )
            : ModaOperatorRequest(
                event: event?.id.toString(),
                sortColumn: sortColumn,
                sortDirection: sortType,
              ),
        search.trim().isNotEmpty ? search : null,
      );
      if (isRoutine.value) {
        routineListOperatorData.value = result;
        currentListOperatorData.value = routineListOperatorData.value;
      } else {
        seasonalListOperatorData.value = result;
        currentListOperatorData.value = seasonalListOperatorData.value;
      }
    } catch (e) {
      if (isRoutine.value) {
        routineListOperatorData.value = [];
        currentListOperatorData.value = routineListOperatorData.value;
      } else {
        seasonalListOperatorData.value = [];
        currentListOperatorData.value = seasonalListOperatorData.value;
      }
      debugPrint('Failed to fetch operators data: ${e.toString()}');
    } finally {
      isLoadingOperatorsData.value = false;
    }
  }

  void applySort() {
    currentSortBy.value = sortBy.value;
    getOperatorsData(isRefresh: true, search: currentSearchOperator.value);
  }

// **Helper function to safely parse OTP rate**
  double parseOtpRate(dynamic otpRate) {
    if (otpRate == null) return 0.0; // Return 0 if null
    if (otpRate is num) {
      return otpRate.toDouble();
    }
    if (otpRate is String) {
      return double.tryParse(otpRate.replaceAll('%', '').trim()) ?? 0.0;
    }
    return 0.0;
  }
}
