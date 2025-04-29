import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/data/models/enum/data_type.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/data/models/request/moda_request.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/domain/entities/od_data.dart' as od;
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class JalanOdDetailController extends GetxController {
  final ModaRepository _modaRepository;
  final StrategiRepository _strategiRepository;

  JalanOdDetailController(this._modaRepository, this._strategiRepository);

  RxBool isLoadingOdData = false.obs;
  RxBool isLoadingOdDetailData = false.obs;
  Rx<od.OdGraphData?> sessionalOdDetailData = Rx<od.OdGraphData?>(null);
  Rx<od.OdGraphData?> routineOdDetailData = Rx<od.OdGraphData?>(null);
  Rx<od.OdGraphData?> currentOdDetailData = Rx<od.OdGraphData?>(null);
  Rx<od.TrafficData?> currentTrafficDataOrigin = Rx<od.TrafficData?>(null);
  Rx<od.TrafficData?> currentTrafficDataDestination = Rx<od.TrafficData?>(null);
  Rx<List<DateTime>> selectedOdRange = Rx<List<DateTime>>([]);
  RxString selectedOdDateRange = ''.obs;
  RxBool isOdChart = true.obs;
  RxBool domOdValue = true.obs;
  RxBool intOdValue = true.obs;
  RxBool isRoutine = true.obs;
  RxString currentSearchOd = ''.obs;
  RxInt idOrigin = 0.obs;
  RxInt idDestination = 0.obs;
  RxBool showVehicleDataOrigin = false.obs;
  RxBool showVehicleDataDestination = false.obs;
  RxBool showMobilitasPenumpangOrigin = true.obs;
  RxBool showMobilitasPenumpangDestination = true.obs;
  RxString origin = ''.obs;
  RxString destination = ''.obs;
  RxInt selectedFilter = 1.obs;
  RxString originCityName = ''.obs;
  RxString destinationCityName = ''.obs;
  RxString originType = ''.obs;
  RxString destinationType = ''.obs;
  Rx<List<Event>?> eventList = Rx<List<Event>?>([]);
  Rx<Event?> currentEvent = Rx<Event?>(null);
  RxString eventType = ''.obs;

  @override
  void onInit() {
    final arguments = Get.arguments;
    if (arguments is od.OdDetailArgument) {
      isRoutine.value = arguments.isRoutine ?? false;
      origin.value = arguments.origin ?? '';
      destination.value = arguments.destination ?? '';
      selectedFilter.value = arguments.selectedFilter ?? 1;
      originCityName.value = arguments.originCityName ?? '';
      destinationCityName.value = arguments.destinationCityName ?? '';
      originType.value = arguments.originType ?? '';
      destinationType.value = arguments.destinationType ?? '';
      selectedOdRange.value = [
        arguments.tanggalAwal1 ?? DateTime.now(),
        arguments.tanggalAkhir1 ?? DateTime.now()
      ];
      selectedOdDateRange.value =
          "${DateFormat('dd MMM yyy').tryFormat(arguments.isRoutine == true ? arguments.tanggalAwal1 : arguments.event?.tanggalMulai)} - ${DateFormat('dd MMM yyy').tryFormat(arguments.isRoutine == true ? arguments.tanggalAkhir1 : arguments.event?.tanggalSelesai)}";
      idOrigin.value = int.tryParse(arguments.idOrigin ?? '') ?? 0;
      idDestination.value = int.tryParse(arguments.idDestination ?? '') ?? 0;
      currentEvent.value = arguments.event;
      getOdDetailData(isRefresh: true);
    }
    ever(isRoutine, (_) => getOdDetailData(isRefresh: false));
    ever(selectedOdRange, (_) => getOdDetailData(isRefresh: true));
    ever(selectedFilter, (_) => updateTrafficData());
    ever(currentEvent, (_) => getOdDetailData(isRefresh: true));

    super.onInit();
  }

  Future<void> updateFilterDate(DateTime? start, DateTime? end) async {
    if (start != null && end != null) {
      selectedOdRange.value = [start, end];
    }
  }

  Future<void> formatDateRanges(DateTime? start, DateTime? end) async {}

  void getOdDetailData({bool isRefresh = false}) async {
    if (isLoadingOdDetailData.value) return;

    try {
      isLoadingOdDetailData.value = true;

      if (isRoutine.value) {
        selectedOdDateRange.value =
            "${DateFormat('dd MMM yyy').tryFormat(selectedOdRange.value[0])} - ${DateFormat('dd MMM yyy').tryFormat(selectedOdRange.value[1])}";
      } else {
        await getEvent(isRefresh: true);
      }

      final stream = _modaRepository.getOdDetail(
          dataType: (isRoutine.value) ? DataType.routine : DataType.seasonal,
          modaType: ModaType.jalan,
          request: ModaRequest(
            tanggalAwal1: selectedOdRange.value[0],
            tanggalAkhir1: selectedOdRange.value[1],
            event: currentEvent.value?.id.toString(),
            idOrigin: idOrigin.value.toString(),
            idDestination: idDestination.value.toString(),
          ));
      stream.listen(
        (result) {
          if (result != null) {
            if (isRoutine.value) {
              routineOdDetailData.value = result;
              currentOdDetailData.value = routineOdDetailData.value;
            } else {
              sessionalOdDetailData.value = result;
              currentOdDetailData.value = sessionalOdDetailData.value;
            }
            updateTrafficData();

            isLoadingOdDetailData.value = false;
          }
        },
        onDone: () {
          isLoadingOdDetailData.value = false;
        },
      );
    } catch (e) {
      if (isRoutine.value) {
        routineOdDetailData.value = null;
        currentOdDetailData.value = routineOdDetailData.value;
        updateTrafficData();
      } else {
        sessionalOdDetailData.value = null;
        currentOdDetailData.value = sessionalOdDetailData.value;
        updateTrafficData();
      }
      debugPrint('Failed to fetch od detail data: ${e.toString()}');
      isLoadingOdDetailData.value = false;
    }
  }

  Future<Event?> getEvent({bool isRefresh = false}) async {
    if (currentEvent.value != null && eventList.value?.isNotEmpty == true) {
      selectedOdDateRange.value =
          "${DateFormat('dd MMM yyy').tryFormat(currentEvent.value?.tanggalMulai)} - ${DateFormat('dd MMM yyy').tryFormat(currentEvent.value?.tanggalSelesai)}";
      return currentEvent.value;
    }

    if (eventList.value?.isNotEmpty == true) {
      selectedOdDateRange.value =
          "${DateFormat('dd MMM yyy').tryFormat(eventList.value?.firstOrNull?.tanggalMulai)} - ${DateFormat('dd MMM yyy').tryFormat(eventList.value?.firstOrNull?.tanggalSelesai)}";
      return currentEvent.value = eventList.value?.firstOrNull;
    }

    await for (final eventData in _strategiRepository.getEvent(EventType.all)) {
      if (eventData.isNotEmpty) {
        eventList.value = eventData;
        if (currentEvent.value == null) {
          currentEvent.value = eventData.first;
          selectedOdDateRange.value =
              "${DateFormat('dd MMM yyy').tryFormat(currentEvent.value?.tanggalMulai)} - ${DateFormat('dd MMM yyy').tryFormat(currentEvent.value?.tanggalSelesai)}";
        }
      }
    }

    return currentEvent.value;
  }

  void updateTrafficData() {
    if (isRoutine.value) {
      switch (selectedFilter.value) {
        case 0:
          currentTrafficDataOrigin.value =
              routineOdDetailData.value?.origin?.weekly;
          currentTrafficDataDestination.value =
              routineOdDetailData.value?.destination?.weekly;
          break;
        case 1:
          currentTrafficDataOrigin.value =
              routineOdDetailData.value?.origin?.monthly;
          currentTrafficDataDestination.value =
              routineOdDetailData.value?.destination?.monthly;
          break;
        default:
          currentTrafficDataOrigin.value =
              routineOdDetailData.value?.origin?.yearly;
          currentTrafficDataDestination.value =
              routineOdDetailData.value?.destination?.yearly;
      }
    } else {
      currentTrafficDataOrigin.value =
          sessionalOdDetailData.value?.origin?.weekly;
      currentTrafficDataDestination.value =
          sessionalOdDetailData.value?.destination?.weekly;
    }
  }
}
