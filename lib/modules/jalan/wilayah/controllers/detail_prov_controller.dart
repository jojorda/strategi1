import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/data/models/enum/data_type.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/data/models/request/moda_request.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/domain/entities/province_data.dart';
import 'package:strategi_hub_app/domain/entities/regional_data.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class DetailProvController extends GetxController {
  final ModaRepository _modaRepository;
  final StrategiRepository _strategiRepository;
  RxBool isComing = false.obs;
  Rx<ModaType?> modaType = Rx<ModaType?>(null);

  RxString provinceId = ''.obs;
  Rx<ProvinceData?> provinceData = Rx<ProvinceData?>(null);
  RxString title = "".obs;
  RxBool isRoutine = false.obs;
  RxBool isLoadingRegionalData = false.obs;
  RxBool showMobilitasPenumpang = true.obs;
  Rx<TrafficData?> currentTrafficData = Rx<TrafficData?>(null);
  RxInt selectedFilter = 1.obs;
  RxInt vehicleType = 0.obs;
  Rx<List<String>> listType = Rx<List<String>>([]);
  Rx<List<String>> listSelectedType = Rx<List<String>>([]);
  Rx<List<String>> selectedType = Rx<List<String>>([]);
  RxString selectedVehicleType = "".obs;
  Rx<List<DateTime>> selectedRange = Rx<List<DateTime>>([]);
  RxString selectedDateRange = ''.obs;
  Rx<List<DateTime>> selectedRoutineRange = Rx<List<DateTime>>([]);
  Rx<Event?> currentEvent = Rx<Event?>(null);
  RxString eventType = RxString("");
  Rx<List<Event>?> eventList = Rx<List<Event>?>(null);
  Rx<RegionalData?> sessionalRegionData = Rx<RegionalData?>(null);
  Rx<RegionalData?> routineRegionData = Rx<RegionalData?>(null);
  Rx<List<NodeData>?> listNodeData = Rx<List<NodeData>?>(null);

  Rx<List<NodeData>?> selectedListNodeData = Rx<List<NodeData>?>(null);
  Rx<RegionalData?> selectedRegionData = Rx<RegionalData?>(null);

  PageController pageController = PageController();
  RxList<String> listFilter = ["a"].obs;
  RxInt groupValue = 0.obs;

  final Completer<GoogleMapController> mapController =
      Completer<GoogleMapController>();

  DetailProvController(this._modaRepository, this._strategiRepository);

  @override
  void onInit() {
    initDate();
    final arguments = Get.arguments;
    if (arguments is Map<String, dynamic>) {
      provinceData.value = arguments['provinceData'];
      provinceId.value = arguments['provinceId'] ?? '0';
      title.value = arguments['title'];
      modaType.value = arguments['moda'];
      final hideDeparture = arguments['hideDeparture'] as bool? ?? false;
      if (isComing.value && hideDeparture) {
        isComing.value = false;
      }
    }
    fetchData(true);

    ever(isRoutine, (_) => fetchData(false));
    ever(selectedFilter, (_) => fetchData(false));
    ever(listSelectedType, (_) => updateList());
    ever(selectedRoutineRange, (_) => fetchData(true));
    ever(currentEvent, (_) => fetchData(true));
    super.onInit();
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

  void fetchData(bool isRefresh) async {
    if (isLoadingRegionalData.value) return;

    if (isRoutine.value && routineRegionData.value != null && !isRefresh) {
      selectedRegionData.value = routineRegionData.value;
      listNodeData.value = routineRegionData.value?.list;
      updateTrafficData();
      return;
    }

    if (!isRoutine.value && sessionalRegionData.value != null && !isRefresh) {
      selectedRegionData.value = sessionalRegionData.value;
      listNodeData.value = sessionalRegionData.value?.list;
      updateTrafficData();
      return;
    }

    isLoadingRegionalData.value = true;
    try {
      final dataType = isRoutine.value ? DataType.routine : DataType.seasonal;
      if (!isRoutine.value) {
        await getEvent();
      }

      final stream = _modaRepository.getRegional(
        ModaRequest(
          tanggalAwal1: isRoutine.value ? selectedRoutineRange.value[0] : null,
          tanggalAkhir1: isRoutine.value ? selectedRoutineRange.value[1] : null,
          event: isRoutine.value ? null : currentEvent.value?.id.toString(),
          provinsi: provinceId.value,
          moda: modaType.value?.name,
        ),
        dataType,
      );

      stream.listen((result) {
        if (result == null) {
          isLoadingRegionalData.value = false;
          return;
        }
        if (isRoutine.value) {
          routineRegionData.value = result;
          selectedRegionData.value = result;
          listNodeData.value = result.list;
          selectedListNodeData.value = result.list;
        } else {
          sessionalRegionData.value = result;
          selectedRegionData.value = result;
          listNodeData.value = result.list;
          selectedListNodeData.value = result.list;
        }
        updateTrafficData();
        isLoadingRegionalData.value = false;
      });
    } catch (e) {
      debugPrint('Error: $e');
      isLoadingRegionalData.value = false;
    }
  }

  void updateChecklist(String value) async {
    if (listSelectedType.value.contains(value)) {
      listSelectedType.value = listSelectedType.value..remove(value);
    } else {
      listSelectedType.value = listSelectedType.value..add(value);
    }
    listSelectedType.refresh();
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

  void updateTrafficData() {
    if (isRoutine.value) {
      _updateDateRangeLabel();
      // selectedDateRange.value = selectedRoutineRange.value.isNotEmpty
      //     ? "${DateFormat('dd MMM yyy').tryFormat(selectedRoutineRange.value[0])} - ${DateFormat('dd MMM yyy').tryFormat(selectedRoutineRange.value[1])}"
      //     : "";
      switch (selectedFilter.value) {
        case 0:
          currentTrafficData.value = selectedRegionData.value?.graph?.weekly;
          break;
        case 1:
          currentTrafficData.value = selectedRegionData.value?.graph?.monthly;
          break;
        default:
          currentTrafficData.value = selectedRegionData.value?.graph?.yearly;
      }
    } else {
      selectedDateRange.value = currentEvent.value != null
          ? "${DateFormat('dd MMM yyy').tryFormat(currentEvent.value!.tanggalMulai)} - ${DateFormat('dd MMM yyy').tryFormat(currentEvent.value!.tanggalSelesai)}"
          : "";
      currentTrafficData.value = selectedRegionData.value?.graph?.weekly;
    }

    listType.value = selectedRegionData.value?.list
            ?.map((e) => e.type ?? '')
            .toSet()
            .toList() ??
        [];
    listSelectedType.value = selectedRegionData.value?.list
            ?.map((e) => e.type ?? '')
            .toSet()
            .toList() ??
        [];
  }

  void updateList() {
    final filter = listNodeData.value
        ?.where((element) => listSelectedType.value.contains(element.type))
        .toList();

    selectedListNodeData.value = filter;
    selectedListNodeData.refresh();
  }

  // void updateFilterDate(DateTime? firstDate, DateTime? lastDate) {
  //   if (firstDate != null) {
  //     final def = defDate(firstDate);
  //     final lstDate = lastDate ?? def;
  //     selectedRoutineRange.value = [firstDate, lstDate];
  //     selectedDateRange.value =
  //         "${DateFormat('dd MMM yyy').tryFormat(firstDate)} - ${DateFormat('dd MMM yyy').tryFormat(lstDate)}";
  void updateFilterDate(DateTime? startDate, DateTime? endDate) {
    if (startDate != null && endDate != null) {
      selectedRoutineRange.value = [startDate, endDate];
      _updateDateRangeLabel();
      fetchData(true);
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

  void onMapCreated(GoogleMapController cont) {
    mapController.complete(cont);
  }
}
