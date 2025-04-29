import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/constant/constant.dart';
import 'package:strategi_hub_app/constant/enum/arteri_enum.dart';
import 'package:strategi_hub_app/constant/enum/menu_enum.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/models/enum/data_type.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/data/models/request/incident_report_request.dart';
import 'package:strategi_hub_app/data/models/request/moda_request.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/domain/entities/incident_report.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/modules/main_menu/models/main_menu_argument.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';

class ArteriController extends GetxController with GetTickerProviderStateMixin {
  final ModaRepository _modaRepository;
  final StrategiRepository _strategiRepository;

  ArteriController(this._modaRepository, this._strategiRepository);

  Rx<MainMenuArgument?> menuArgument = Rx<MainMenuArgument?>(null);
  RxString title = 'Menu'.obs;

  late TabController tabController;
  RxInt selectedIndex = 0.obs;
  RxBool isRoutine = false.obs;

  // Aggregate Data
  Rx<AggregateData?> sessionalAggregateData = Rx<AggregateData?>(null);
  Rx<AggregateData?> reoutineAggregateData = Rx<AggregateData?>(null);
  Rx<AggregateData?> currentAggregateData = Rx<AggregateData?>(null);
  Rx<TrafficData?> currentTrafficData = Rx<TrafficData?>(null);
  RxBool showAlternateAggregateData = true.obs;
  RxBool isLoadingAggregateData = false.obs;
  RxBool showMobilitasPenumpang = true.obs;
  RxBool isSwitched = false.obs;
  RxBool showMerakData = false.obs;
  RxBool showVehicleData = true.obs;
  RxInt selectedFilter = 2.obs;
  Rx<List<DateTime>> selectedRange = Rx<List<DateTime>>([]);
  Rx<List<DateTime>> selectedRoutineRange = Rx<List<DateTime>>([]);
  RxString selectedDateRange = ''.obs;
  Rx<Event?> currentEvent = Rx<Event?>(null);
  RxString eventType = RxString("");
  Rx<List<Event>?> eventList = Rx<List<Event>?>(null);

  // Incident Data
  RxBool isLoadingIncidentData = false.obs;
  Rx<List<IncidentReport>?> listIncidentData = Rx<List<IncidentReport>?>(null);
  Rx<List<DateTime>> selectedIncidentRange = Rx<List<DateTime>>([]);
  RxString selectedIncidentDateRange = ''.obs;
  RxInt incidentPage = 0.obs;
  int incidentLimit = 10;

  // Prominent Incident Data
  RxBool isLoadingProminentIncidentData = false.obs;
  Rx<List<IncidentReport>?> listProminentIncidentData =
      Rx<List<IncidentReport>?>(null);
  Rx<List<DateTime>> selectedProminentIncidentRange = Rx<List<DateTime>>([]);
  RxString selectedProminentIncidentDateRange = ''.obs;
  RxInt prominentIncidentPage = 0.obs;
  int prominentIncidentLimit = 10;

  @override
  void onInit() {
    initDate();
    final arguments = Get.arguments;
    if (arguments is MainMenuArgument) {
      menuArgument.value = arguments;
    }

    tabController = TabController(length: getMenuList().length, vsync: this);
    initIndex();
    listenTabSwitch();

    ever(selectedIndex, (_) => fetchData(false));
    ever(currentEvent, (_) => fetchData(true));
    ever(isRoutine, (_) => fetchData(false));
    ever(selectedFilter, (_) => fetchData(false));
    ever(selectedRoutineRange, (_) => fetchData(true));
    ever(selectedIncidentRange, (_) => fetchData(true));
    ever(selectedProminentIncidentRange, (_) => fetchData(true));
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

    selectedIncidentRange.value = initialDate;
    selectedIncidentDateRange.value = initialDateString;

    selectedProminentIncidentRange.value = initialDate;
    selectedProminentIncidentDateRange.value = initialDateString;
  }

  List<ArteriEnum> getMenuList() {
    return [
      if (hasPermission(Permission.arteriAgregat)) ArteriEnum.agregat,
      // ArteriEnum.operator,
      if (hasPermission(Permission.arteriKecelakaan)) ArteriEnum.kecelakaan,
    ];
  }

  int getSelectedIndex(ArteriEnum menuEnum) {
    final list = getMenuList();
    final index = list.indexOf(menuEnum);
    return index != -1 ? index : 0;
  }

  void initIndex() {
    if (menuArgument.value?.arteriEnum != null) {
      selectedIndex.value = getSelectedIndex(menuArgument.value!.arteriEnum!);
    } else {
      selectedIndex.value = 0;
    }

    if (menuArgument.value?.menuEnum != null) {
      final idx = MenuEnumValue.toIndex(menuArgument.value!.menuEnum);
      title.value = Constant.tabMenu[idx];
    }

    tabController.index = selectedIndex.value;
    selectedIndex.refresh();
    fetchData(true);
  }

  void listenTabSwitch() {
    tabController.animation!.addListener(() {
      FocusManager.instance.primaryFocus?.unfocus();
      // this will catch a tab change by tapping on the tab bar
      if (tabController.indexIsChanging) {
        if (selectedIndex.value != tabController.index) {
          selectedIndex.value = tabController.index;
        }
      } else {
        final int temp = tabController.animation!.value.round();
        if (selectedIndex.value != temp) {
          selectedIndex.value = temp;
          tabController.index = selectedIndex.value;
        }
      }

      selectedIndex.refresh();
    });
  }

  void fetchData(bool isRefresh) {
    switch (getMenuList()[selectedIndex.value]) {
      case ArteriEnum.agregat:
        getAggregateData(isRefresh: isRefresh);
        break;
      case ArteriEnum.wilayah:
        getRegionalData(isRefresh: isRefresh);
        break;
      case ArteriEnum.od:
        getOdData(isRefresh: isRefresh);
        break;
      case ArteriEnum.operator:
        getOperatorData(isRefresh: isRefresh);
        break;
      case ArteriEnum.kecelakaan:
        getIncidentData(isRefresh: isRefresh);
        break;
      case ArteriEnum.kejadianMenonjol:
        getProminentIncidentData(isRefresh: isRefresh);
        break;
    }
  }

  void getAggregateData({bool isRefresh = false}) async {
    if (isLoadingAggregateData.value) return;
    if (isRoutine.value && reoutineAggregateData.value != null && !isRefresh) {
      currentAggregateData.value = reoutineAggregateData.value;
      updateTrafficData();
      return;
    }

    if (!isRoutine.value &&
        sessionalAggregateData.value != null &&
        !isRefresh) {
      currentAggregateData.value = sessionalAggregateData.value;
      updateTrafficData();
      return;
    }

    isLoadingAggregateData.value = true;
    final event = await getEvent();

    _modaRepository
        .getAggregate(
      ModaType.arteri,
      isRoutine.value ? DataType.routine : DataType.seasonal,
      isRoutine.value
          ? ModaRequest(
              tanggalAwal1: selectedRoutineRange.value[0],
              tanggalAkhir1: selectedRoutineRange.value[1],
            )
          : ModaRequest(
              event: event?.id.toString(),
            ),
    )
        .listen((data) async {
      if (isRoutine.value) {
        reoutineAggregateData.value = data;
        currentAggregateData.value = reoutineAggregateData.value;
      } else {
        sessionalAggregateData.value = data;
        currentAggregateData.value = sessionalAggregateData.value;
      }
      updateTrafficData();
      isLoadingAggregateData.value = false;
    });
  }

  void updateTrafficData() {
    if (isRoutine.value) {
      switch (selectedFilter.value) {
        case 0:
          currentTrafficData.value = reoutineAggregateData.value?.graph?.weekly;
          break;
        case 1:
          currentTrafficData.value =
              reoutineAggregateData.value?.graph?.monthly;
          break;
        default:
          currentTrafficData.value = reoutineAggregateData.value?.graph?.yearly;
      }
      // selectedDateRange.value = selectedRoutineRange.value.isNotEmpty
      //     ? "${DateFormat('dd MMM yyy').tryFormat(selectedRoutineRange.value[0])} - ${DateFormat('dd MMM yyy').tryFormat(selectedRoutineRange.value[1])}"
      //     : "";
      _updateDateRangeLabel();
    } else {
      selectedDateRange.value = currentEvent.value != null
          ? "${DateFormat('dd MMM yyy').tryFormat(currentEvent.value!.tanggalMulai)} - ${DateFormat('dd MMM yyy').tryFormat(currentEvent.value!.tanggalSelesai)}"
          : "";
      currentTrafficData.value = sessionalAggregateData.value?.graph?.seasonal;
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

  // TODO: Add your code to get regional data
  void getRegionalData({bool isRefresh = false}) async {}

  // TODO: Add your code to get od data
  void getOdData({bool isRefresh = false}) {}

  // TODO: Add your code to get operator data
  void getOperatorData({bool isRefresh = false}) {}

  void getIncidentData({bool isRefresh = false}) async {
    if (isLoadingIncidentData.value) return;
    if (listIncidentData.value != null && !isRefresh) return;

    isLoadingIncidentData.value = true;
    try {
      final result = await _modaRepository.getIncidentReport(
        ModaType.arteri,
        IncidentReportRequest(
          page: incidentPage.value.toString(),
          limit: incidentLimit.toString(),
          startDate: selectedIncidentRange.value[0],
          endDate: selectedIncidentRange.value[1],
          category: 'kecelakaan',
        ),
      );

      listIncidentData.value = result;
      isLoadingIncidentData.value = false;
    } catch (e) {
      listIncidentData.value = null;
      isLoadingIncidentData.value = false;
      debugPrint('Failed to fetch incident report: ${e.toString()}');
    }
  }

  void getProminentIncidentData({bool isRefresh = false}) async {
    if (isLoadingProminentIncidentData.value) return;
    if (listProminentIncidentData.value != null && !isRefresh) return;

    isLoadingProminentIncidentData.value = true;
    try {
      final result = await _modaRepository.getIncidentReport(
        ModaType.arteri,
        IncidentReportRequest(
          page: prominentIncidentPage.value.toString(),
          limit: prominentIncidentLimit.toString(),
          startDate: selectedProminentIncidentRange.value[0],
          endDate: selectedProminentIncidentRange.value[1],
          category: 'kejadian menonjol',
        ),
      );

      listProminentIncidentData.value = result;
      isLoadingProminentIncidentData.value = false;
    } catch (e) {
      listProminentIncidentData.value = null;
      isLoadingProminentIncidentData.value = false;
      debugPrint('Failed to fetch prominent incident report: ${e.toString()}');
    }
  }

  Future<Event?> getEvent() async {
    if (currentEvent.value != null) return currentEvent.value;
    if (eventList.value != null) {
      return currentEvent.value = eventList.value?.firstOrNull;
    }

    final completer = Completer<Event>();
    bool isCompleted = false; // Flag to track completion
    _strategiRepository.getEvent(EventType.arteri).listen((events) {
      eventList.value = events;
      currentEvent.value = events.firstOrNull;
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
      fetchData(true);
    }
  }

  void updateIncidentFilterDate(DateTime? firstDate, DateTime? lastDate) {
    if (firstDate != null) {
      final def = defDate(firstDate);
      final lstDate = lastDate ?? def;
      selectedIncidentRange.value = [firstDate, lstDate];
      selectedIncidentDateRange.value =
          "${DateFormat('dd MMM yyy').tryFormat(selectedIncidentRange.value[0])} - ${DateFormat('dd MMM yyy').tryFormat(selectedIncidentRange.value[1])}";
    }
  }

  void updateProminentIncidentFilterDate(
      DateTime? firstDate, DateTime? lastDate) {
    if (firstDate != null) {
      final def = defDate(firstDate);
      final lstDate = lastDate ?? def;
      selectedProminentIncidentRange.value = [firstDate, lstDate];
      selectedProminentIncidentDateRange.value =
          "${DateFormat('dd MMM yyy').tryFormat(selectedProminentIncidentRange.value[0])} - ${DateFormat('dd MMM yyy').tryFormat(selectedProminentIncidentRange.value[1])}";
    }
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
}
