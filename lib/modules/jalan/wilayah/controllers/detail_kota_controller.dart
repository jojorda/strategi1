import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/domain/entities/regional_data.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class DetailKotaController extends GetxController {
  PageController pageController = PageController();
  final ModaRepository _modaRepository;
  final StrategiRepository _strategiRepository;

  Rx<List<DateTime>> selectedRange = Rx<List<DateTime>>([]);
  Rx<List<DateTime>> selectedRoutineRange = Rx<List<DateTime>>([]);
  RxString selectedDateRange = ''.obs;
  Rx<Event?> currentEvent = Rx<Event?>(null);
  RxString eventType = RxString("");
  Rx<List<Event>?> eventList = Rx<List<Event>?>(null);
  RxBool isRoutine = true.obs;
  RxBool showMobilitasPenumpang = true.obs;
  RxInt selectedFilter = 1.obs;
  RxBool hideDeparture = false.obs;
  Rx<ModaType?> detailType = Rx<ModaType?>(null);

  Rx<AggregateGraphData?> routineData = Rx<AggregateGraphData?>(null);
  Rx<AggregateGraphData?> sessionalData = Rx<AggregateGraphData?>(null);
  Rx<TrafficData?> currentTrafficData = Rx<TrafficData?>(null);

  RxBool isFullScreen = false.obs;

  Rx<String?> title = ''.obs;
  Rx<NodeData?> data = Rx<NodeData?>(null);
  Rx<String?> parentCity = ''.obs;

  RxBool isLoading = false.obs;

  DetailKotaController(this._modaRepository, this._strategiRepository);

  @override
  void onInit() {
    super.onInit();
    initDate();
    final arguments = Get.arguments;
    if (arguments is Map<String, dynamic>) {
      title.value = arguments['title'] as String?;
      data.value = arguments['data'] as NodeData?;
      parentCity.value = arguments['parentCity'] as String?;
      detailType.value = arguments['moda'] as ModaType?;
      isRoutine.value = arguments['isRoutine'] as bool? ?? true;
      currentEvent.value = arguments['event'] as Event?;
      selectedFilter.value = arguments['selectedFilter'] as int? ?? 0;
      selectedRoutineRange.value =
          arguments['selectedDateRange'] as List<DateTime>? ?? [];
      hideDeparture.value = arguments['hideDeparture'] as bool? ?? false;
    }

    if (data.value != null) {
      fetchDetailKota(isRefresh: true);
    }

    ever(currentEvent, (_) => fetchDetailKota(isRefresh: true));
    ever(isRoutine, (_) => fetchDetailKota(isRefresh: false));
    ever(selectedFilter, (_) => fetchDetailKota(isRefresh: false));
    ever(selectedRoutineRange, (_) => fetchDetailKota(isRefresh: true));
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

  Future<void> fetchDetailKota({bool isRefresh = false}) async {
    if (isLoading.value) return;
    if (!isRefresh && isRoutine.value && routineData.value != null) {
      updateTrafficData(routineData.value);
      return;
    }

    if (!isRefresh && !isRoutine.value && sessionalData.value != null) {
      updateTrafficData(sessionalData.value);
      return;
    }

    try {
      isLoading.value = true;
      final event = await getEvent();

      final response = _modaRepository.getRegionalDetail(
        isRoutine: isRoutine.value,
        idLocation: data.value?.idLocation ?? '',
        tanggalAwal1: selectedRoutineRange.value[0],
        tanggalAkhir1: selectedRoutineRange.value[1],
        event: event?.id.toString(),
        moda: detailType.value?.name ?? 'jalan',
      );

      response.listen((event) {
        if (event != null) {
          if (isRoutine.value) {
            routineData.value = event;
          } else {
            sessionalData.value = event;
          }
          updateTrafficData(event);
          isLoading.value = false;
        }
      });

      isLoading.value = false;
    } catch (e) {
      updateTrafficData(null);
      isLoading.value = false;
    }
  }
  void _updateDateRangeLabel() {
    final start = selectedRoutineRange.value[0];
    final end = selectedRoutineRange.value[1];
    
    if (isRoutine.value) {
      if (selectedFilter.value == 1) {
        // Filter mingguan - Format MMM yyyy (Feb 2025 - Apr 2025)
        final DateFormat monthYearFormat = DateFormat('MMM yyyy');
        selectedDateRange.value = '${monthYearFormat.format(start)} - ${monthYearFormat.format(end)}';
      } 
      else if (selectedFilter.value == 2) {
        // Filter bulanan - Format yyyy (2024 - 2025)
        // Tampilkan tahun saja jika tahun awal dan akhir berbeda
        if (start.year != end.year) {
          selectedDateRange.value = '${start.year} - ${end.year}';
        } else {
          // Jika tahun sama, tampilkan hanya satu tahun
          selectedDateRange.value = start.year.toString();
        }
      }
      else if (selectedFilter.value == 3) {
        // Filter tahunan - Format yyyy (2024 - 2025)
        if (start.year != end.year) {
          selectedDateRange.value = '${start.year} - ${end.year}';
        } else {
          // Jika tahun sama, tampilkan hanya satu tahun
          selectedDateRange.value = start.year.toString();
        }
      }
      else {
        // Format normal untuk filter lain - Format dd MMM yyyy
        final DateFormat fullFormat = DateFormat('dd MMM yyyy');
        selectedDateRange.value = '${fullFormat.format(start)} - ${fullFormat.format(end)}';
      }
    } else {
      // Format untuk seasonal
      final DateFormat fullFormat = DateFormat('dd MMM yyyy');
      selectedDateRange.value = '${fullFormat.format(start)} - ${fullFormat.format(end)}';
    }
  }

  void updateTrafficData(AggregateGraphData? data) {
    if (isRoutine.value) {
      _updateDateRangeLabel();
      // selectedDateRange.value = selectedRoutineRange.value.isNotEmpty
      //     ? "${DateFormat('dd MMM yyy').tryFormat(selectedRoutineRange.value[0])} - ${DateFormat('dd MMM yyy').tryFormat(selectedRoutineRange.value[1])}"
      //     : "";
      switch (selectedFilter.value) {
        case 0:
          currentTrafficData.value = data?.weekly;
          break;
        case 1:
          currentTrafficData.value = data?.monthly;
          break;
        default:
          currentTrafficData.value = data?.yearly;
      }
    } else {
      selectedDateRange.value = currentEvent.value != null
          ? "${DateFormat('dd MMM yyy').tryFormat(currentEvent.value!.tanggalMulai)} - ${DateFormat('dd MMM yyy').tryFormat(currentEvent.value!.tanggalSelesai)}"
          : "";
      currentTrafficData.value = data?.weekly;
    }
  }

  Future<Event?> getEvent() async {
    if (eventList.value?.firstOrNull != null) {
      if (currentEvent.value != null) return currentEvent.value;
      return currentEvent.value = eventList.value?.firstOrNull;
    }

    final completer = Completer<Event>();
    bool isCompleted = false;
    _strategiRepository
        .getEvent(EventType.values
                .firstWhereOrNull((e) => e.name == detailType.value?.name) ??
            EventType.all)
        .listen((events) {
      eventList.value = events;
      currentEvent.value ??= events.firstOrNull;
      if (!isCompleted) {
        completer.complete(currentEvent.value);
        isCompleted = true; // Set the flag to true
      }
    });

    return completer.future;
  }

  // void updateFilterDate(DateTime? firstDate, DateTime? lastDate) {
  //   if (firstDate != null) {
  //     final def = defDate(firstDate);
  //     final lstDate = lastDate ?? def;
  //     selectedRoutineRange.value = [firstDate, lstDate];
  void updateFilterDate(DateTime? startDate, DateTime? endDate) {
    if (startDate != null && endDate != null) {
      selectedRoutineRange.value = [startDate, endDate];
      _updateDateRangeLabel();
      fetchDetailKota(isRefresh: true);
    }
  }

  DateTime defDate(DateTime firstDate) {
    switch (selectedFilter.value) {
      case 0:
        return firstDate.add(Duration(days: 6));
      case 1:
        return DateTime(firstDate.year, firstDate.month + 1, 0);
      case 2:
        return DateTime(firstDate.year, 12, 31);
      default:
        return DateTime(firstDate.year, firstDate.month, 1);
    }
  }
}
