import 'dart:async';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/data/models/request/moda_request.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/domain/entities/matrix_report.dart';
import 'package:strategi_hub_app/domain/repositories/report_repository.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class StatusLaporanController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isRoutine = false.obs;
  Rx<List<DateTime>> selectedRange = Rx<List<DateTime>>([]);
  RxInt selectedFilter = 2.obs;
  RxString selectedDateRange = ''.obs;
  Rx<List<Event>?> eventList = Rx<List<Event>?>(null);
  Rx<Event?> currentEvent = Rx<Event?>(null);
  RxString eventType = RxString("");
  ModaType modaType = ModaType.asdp;
  RxString modaTypeName = RxString("");
  RxInt currentPage = 1.obs;
  RxInt totalPages = 1.obs;

  final ReportRepository _reportRepository;
  final StrategiRepository _strategiRepository;

  RxList<HeaderEntity> columnHeaders = <HeaderEntity>[].obs;
  RxList<MatrixReportDataEntity> columnDatas = <MatrixReportDataEntity>[].obs;

  StatusLaporanController(
    this._strategiRepository,
    this._reportRepository,
  );

  @override
  void onInit() {
    final arguments = Get.arguments;
    if (arguments is Map<String, dynamic>) {
      modaType = ModaTypeExtension.getModaType(arguments["moda"]);
      modaTypeName.value = transformModaType(modaType);
      _fetchData();
    }

    getEvent();

    ever(currentEvent, (_) => _fetchData());
    super.onInit();
  }

  void _fetchData() async {
    isLoading.value = true;

    try {
      final response = await _reportRepository.getMatrixReportList(
          modaType,
          ModaRequest(
            tanggalAwal1: currentEvent.value?.tanggalMulai,
            tanggalAkhir1: currentEvent.value?.tanggalSelesai,
            event: currentEvent.value?.id.toString(),
          ));

      columnHeaders.value = response.header ?? [];
      columnDatas.value = response.data ?? [];

      if (columnDatas.isNotEmpty) {
        totalPages.value = ((columnDatas.length) / 10).ceil();
        currentPage.value = 1;
      }

      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    }
  }

  void updateFilterDate(DateTime? firstDate, DateTime? lastDate) {
    if (firstDate != null) {
      final def = defDate(firstDate);
      final lstDate = lastDate ?? def;
      selectedRange.value = [firstDate, lstDate];
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

  Future<Event?> getEvent({bool isRefresh = false}) async {
    if (currentEvent.value != null) return currentEvent.value;

    if (eventList.value != null) {
      return currentEvent.value = eventList.value?.firstOrNull;
    }

    await for (final eventData in _strategiRepository.getEvent(EventType.all)) {
      if (eventData.isNotEmpty) {
        eventList.value = eventData;
        currentEvent.value = eventData.first;
        selectedDateRange.value =
            "${DateFormat('dd MMM yyy').tryFormat(currentEvent.value?.tanggalMulai ?? DateTime.now())} - ${DateFormat('dd MMM yyy').tryFormat(currentEvent.value?.tanggalSelesai ?? DateTime.now())}";

        if (!isRefresh) {
          selectedRange.value = [
            currentEvent.value?.tanggalMulai ?? DateTime.now(),
            currentEvent.value?.tanggalSelesai ?? DateTime.now()
          ];
        }
      }
    }

    return currentEvent.value;
  }

  String transformModaType(ModaType type) {
    switch (type) {
      case ModaType.asdp:
      case ModaType.laut:
        return 'Pelabuhan';
      case ModaType.jalan:
        return 'Terminal';
      default:
        return 'Terminal';
    }
  }
}
