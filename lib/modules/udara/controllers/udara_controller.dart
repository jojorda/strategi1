import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/constant/constant.dart';
import 'package:strategi_hub_app/constant/enum/menu_enum.dart';
import 'package:strategi_hub_app/constant/enum/udara_enum.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/models/enum/data_type.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/data/models/request/incident_report_request.dart';
import 'package:strategi_hub_app/data/models/request/moda_request.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/domain/entities/incident_report.dart';
import 'package:strategi_hub_app/domain/entities/od_data.dart' as od;
import 'package:strategi_hub_app/domain/entities/province_data.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/modules/main_menu/models/main_menu_argument.dart';
import 'package:strategi_hub_app/modules/udara/operator/controllers/udara_operator_controller.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';

class UdaraController extends GetxController with GetTickerProviderStateMixin {
  final ModaRepository _modaRepository;
  final StrategiRepository _strategiRepository;
  final UdaraOperatorController _udaraOperatorController;
  UdaraController(this._modaRepository, this._strategiRepository,
      this._udaraOperatorController);

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
  RxBool showVehicleData = false.obs;
  RxInt selectedFilter = 2.obs;
  Rx<List<DateTime>> selectedRange = Rx<List<DateTime>>([]);
  RxString selectedDateRange = ''.obs;
  Rx<List<DateTime>> selectedRoutineRange = Rx<List<DateTime>>([]);
  Rx<Event?> currentEvent = Rx<Event?>(null);
  Rx<List<Event>?> eventList = Rx<List<Event>?>(null);
  RxString eventType = RxString("");

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

  // Regional Data
  RxBool isLoadingRegionalData = false.obs;
  Rx<List<ProvinceData>?> listProvince = Rx<List<ProvinceData>?>(null);
  Rx<List<ProvinceData>?> listFilteredProvince = Rx<List<ProvinceData>?>(null);
  RxInt currentPage = 1.obs;
  RxInt totalPages = 1.obs;
  TextEditingController searchController = TextEditingController();
  Rx<Event?> currentRegionalEvent = Rx<Event?>(null);
  RxString eventRegionalType = RxString("");

  // OD Data
  RxBool isLoadingOdData = false.obs;
  RxBool isLoadingOdDetailData = false.obs;
  Rx<od.OdChartList?> sessionalListOdData = Rx<od.OdChartList?>(null);
  Rx<od.OdChartList?> routineListOdData = Rx<od.OdChartList?>(null);
  Rx<od.OdChartList?> currentListOdData = Rx<od.OdChartList?>(null);
  Rx<od.OdGraphData?> sessionalOdDetailData = Rx<od.OdGraphData?>(null);
  Rx<od.OdGraphData?> routineOdDetailData = Rx<od.OdGraphData?>(null);
  Rx<od.OdGraphData?> currentOdDetailData = Rx<od.OdGraphData?>(null);
  Rx<List<DateTime>> selectedRoutineOdRange = Rx<List<DateTime>>([]);
  RxString selectedOdDateRange = ''.obs;
  RxBool isOdChart = true.obs;
  RxBool domOdValue = true.obs;
  RxBool intOdValue = true.obs;
  RxString currentSearchOd = ''.obs;
  RxInt idOrigin = 0.obs;
  RxInt idDestination = 0.obs;
  RxBool isOdRoutine = false.obs;

  @override
  void onInit() {
    initDate();
    menuArgument.value = Get.arguments;
    tabController = TabController(length: getMenuList().length, vsync: this);
    initIndex();
    listenTabSwitch();

    ever(currentEvent, (_) => fetchData(true));
    ever(selectedIndex, (_) => fetchData(false));
    ever(isRoutine, (_) {
      fetchData(false);
      handleOnUpdateIsRoutine();
    });
    ever(selectedFilter, (_) => fetchData(false));
    ever(selectedRoutineRange, (_) => fetchData(true));
    ever(selectedIncidentRange, (_) => fetchData(true));
    ever(selectedRoutineOdRange, (_) => fetchData(true));
    ever(selectedProminentIncidentRange, (_) => fetchData(true));
    ever(domOdValue, (_) => fetchData(true));
    ever(intOdValue, (_) => fetchData(true));
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

    selectedRoutineOdRange.value = initialDate;
    selectedOdDateRange.value = initialDateString;
  }

  List<UdaraEnum> getMenuList() {
    return [
      if (hasPermission(Permission.udaraAgregat)) UdaraEnum.agregat,
      UdaraEnum.wilayah,
      UdaraEnum.simpul,
      if (hasPermission(Permission.udaraOD)) UdaraEnum.od,
      if (hasPermission(Permission.udaraOperator)) UdaraEnum.operator,
      if (hasPermission(Permission.udaraKecelakaan)) UdaraEnum.kecelakaan,
      UdaraEnum.kejadianMenonjol,
    ];
  }

  int getSelectedIndex(UdaraEnum udaraEnum) {
    final list = getMenuList();
    final index = list.indexOf(udaraEnum);
    return index != -1 ? index : 0;
  }

  void initIndex() {
    if (menuArgument.value?.udaraEnum != null) {
      selectedIndex.value = getSelectedIndex(menuArgument.value!.udaraEnum!);
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
      case UdaraEnum.agregat:
        getAggregateData(isRefresh: isRefresh);
        break;
      case UdaraEnum.wilayah:
        getRegionalData(isRefresh: isRefresh);
        break;
      case UdaraEnum.simpul:
        getAggregateData(isRefresh: isRefresh);
        break;
      case UdaraEnum.od:
        getOdData(isRefresh: isRefresh, search: currentSearchOd.value);
        break;
      case UdaraEnum.operator:
        getOperatorData(isRefresh: isRefresh);
        break;
      case UdaraEnum.kecelakaan:
        getIncidentData(isRefresh: isRefresh);
        break;
      case UdaraEnum.kejadianMenonjol:
        getProminentIncidentData(isRefresh: isRefresh);
        break;
    }
  }

  void getAggregateData({bool isRefresh = false}) async {
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
      ModaType.udara,
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

  void getRegionalData({bool isRefresh = false}) {
    if (isLoadingRegionalData.value) return;
    if (listProvince.value != null && !isRefresh) return;
    try {
      isLoadingRegionalData.value = true;
      _strategiRepository.getProvince().listen(
        (result) {
          if (result.isNotEmpty) {
            listProvince.value = result;
            listFilteredProvince.value = result;
            totalPages.value = ((listProvince.value?.length ?? 0) / 10).ceil();
            currentPage.value = 1;
          }
        },
        onDone: () {
          isLoadingRegionalData.value = false;
        },
      );
    } catch (e) {
      listProvince.value = null;
      listFilteredProvince.value = null;
      totalPages.value = 1;
      currentPage.value = 1;
      isLoadingRegionalData.value = false;
      debugPrint('Failed to fetch province: ${e.toString()}');
    }
  }

  void searchProvince() {
    final search = searchController.text;
    if (search.isEmpty) {
      listFilteredProvince.value = listProvince.value;
      totalPages.value = ((listProvince.value?.length ?? 0) / 10).ceil();
      currentPage.value = 1;
      return;
    }

    listFilteredProvince.value = listProvince.value
        ?.where((element) =>
            element.name.toLowerCase().contains(search.toLowerCase()))
        .toList();
    totalPages.value = ((listFilteredProvince.value?.length ?? 0) / 10).ceil();
    currentPage.value = 1;
  }

  void searchOd(String query) {
    currentSearchOd.value = query;
    debounce(currentSearchOd, (_) {
      getOdData(isRefresh: true, search: currentSearchOd.value);
    }, time: Duration(milliseconds: 500));
  }

  void getOdData({bool isRefresh = false, String search = ''}) async {
    if (isLoadingOdData.value) return;
    if (isRoutine.value && routineListOdData.value != null && !isRefresh) {
      currentListOdData.value = routineListOdData.value;
      return;
    }

    if (!isRoutine.value && sessionalListOdData.value != null && !isRefresh) {
      currentListOdData.value = sessionalListOdData.value;
      return;
    }

    try {
      isLoadingOdData.value = true;
      final event = await getEvent();
      List<od.OdChartList> listOd = [];

      _modaRepository
          .getOdList(
        ModaType.udara,
        isRoutine.value ? DataType.routine : DataType.seasonal,
        isRoutine.value
            ? ModaRequest(
                tanggalAwal1: selectedRoutineRange.value[0],
                tanggalAkhir1: selectedRoutineRange.value[1],
                type: getSelectedType().isNotEmpty ? getSelectedType() : null,
              )
            : ModaRequest(
                event: event?.id.toString(),
                type: getSelectedType().isNotEmpty ? getSelectedType() : null,
              ),
        search.trim().isNotEmpty ? search : null,
      )
          .listen(
        (result) {
          if (result != null) {
            listOd.add(result);
            if (isRoutine.value) {
              routineListOdData.value = result;
              currentListOdData.value = routineListOdData.value;
            } else {
              sessionalListOdData.value = result;
              currentListOdData.value = sessionalListOdData.value;
            }
            isLoadingOdData.value = false;
          }
        },
        onDone: () {
          isLoadingOdData.value = false;
          if (listOd.isEmpty) {
            resetODList();
          }
        },
      );
    } catch (e) {
      resetODList();
      debugPrint('Failed to fetch od data: ${e.toString()}');
      isLoadingOdData.value = false;
    }
  }

  void resetODList() {
    if (isRoutine.value) {
      routineListOdData.value = null;
      currentListOdData.value = routineListOdData.value;
    } else {
      sessionalListOdData.value = null;
      currentListOdData.value = sessionalListOdData.value;
    }
  }

  // TODO: Add your code to get operator data
  void getOperatorData({bool isRefresh = false}) {
    _udaraOperatorController.onInit();
  }

  void getIncidentData({bool isRefresh = false}) async {
    if (isLoadingIncidentData.value) return;
    if (listIncidentData.value != null && !isRefresh) return;

    isLoadingIncidentData.value = true;
    try {
      final result = await _modaRepository.getIncidentReport(
        ModaType.udara,
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
        ModaType.udara,
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
    _strategiRepository.getEvent(EventType.udara).listen((events) {
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
  //     selectedDateRange.value =
  //         "${DateFormat('dd MMM yyy').tryFormat(selectedRoutineRange.value[0])} - ${DateFormat('dd MMM yyy').tryFormat(selectedRoutineRange.value[1])}";
  void updateFilterDate(DateTime? startDate, DateTime? endDate) {
    if (startDate != null && endDate != null) {
      selectedRoutineRange.value = [startDate, endDate];
      _updateDateRangeLabel();
      fetchData(true);
    }
  }

  void handleOnSelectedEvent(Event? event) {
    currentEvent.value = event;
    selectedDateRange.value =
        "${DateFormat('dd MMM yyy').tryFormat(event?.tanggalMulai)} - ${DateFormat('dd MMM yyy').tryFormat(event?.tanggalSelesai)}";
  }

  void handleOnUpdateIsRoutine() {
    if (isRoutine.value) {
      // selectedDateRange.value =
      //     "${DateFormat('dd MMM yyy').tryFormat(selectedRoutineRange.value[0])} - ${DateFormat('dd MMM yyy').tryFormat(selectedRoutineRange.value[1])}";
      _updateDateRangeLabel();
    } else {
      selectedDateRange.value =
          "${DateFormat('dd MMM yyy').tryFormat(currentEvent.value?.tanggalMulai)} - ${DateFormat('dd MMM yyy').tryFormat(currentEvent.value?.tanggalSelesai)}";
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

  void updateFilterOdDate(DateTime? firstDate, DateTime? lastDate) {
    if (firstDate != null) {
      final def = defDate(firstDate);
      final lstDate = lastDate ?? def;
      selectedRoutineOdRange.value = [firstDate, lstDate];
      selectedOdDateRange.value =
          "${DateFormat('dd MMM yyy').tryFormat(selectedRoutineOdRange.value[0])} - ${DateFormat('dd MMM yyy').tryFormat(selectedRoutineOdRange.value[1])}";
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

  String getSelectedType() {
    if (domOdValue.value == intOdValue.value) {
      return '';
    } else if (domOdValue.value) {
      return 'domestik';
    } else {
      return 'internasional';
    }
  }
}
