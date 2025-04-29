import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/data/models/request/cctv_request.dart';
import 'package:strategi_hub_app/data/models/request/incident_report_request.dart';
import 'package:strategi_hub_app/domain/entities/cctv_data.dart';
import 'package:strategi_hub_app/domain/entities/event.dart' as domain_event;
import 'package:strategi_hub_app/domain/entities/focus.dart';
import 'package:strategi_hub_app/domain/entities/incident_report.dart';
import 'package:strategi_hub_app/domain/entities/pantau.dart';
import 'package:strategi_hub_app/domain/repositories/cctv_repository.dart';
import 'package:strategi_hub_app/domain/repositories/focus_repository.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

class FokusController extends GetxController with GetTickerProviderStateMixin {
  final ModaRepository _modaRepository;
  final FocusRepository _focusRepository;
  final CctvRepository _cctvRepository;
  final StrategiRepository _strategiRepository;
  FokusController(this._modaRepository, this._focusRepository,
      this._cctvRepository, this._strategiRepository);

  // get focus
  Rx<FocusData?> focusData = Rx<FocusData?>(null);
  Rx<List<SimpulChartData>?> currentSimpulTransportasi =
      Rx<List<SimpulChartData>>([]);
  RxInt selectedFilter = 2.obs;
  Rx<List<DateTime>> selectedRoutineRange = Rx<List<DateTime>>([]);
  RxBool isRoutine = false.obs;
  RxString selectedDateRange = ''.obs;
  Rx<domain_event.Event?> currentEvent = Rx<domain_event.Event?>(null);
  RxString eventType = RxString("");
  Rx<List<domain_event.Event>?> eventList = Rx<List<domain_event.Event>?>(null);

  RxBool showAlternateAggregateData = false.obs;
  RxBool isLoadingAggregateData = false.obs;
  RxBool showMobilitasPenumpang = false.obs;
  RxBool isSwitched = false.obs;
  RxBool showMerakData = false.obs;
  RxBool showVehicleData = false.obs;
  RxBool showTrainIcons = false.obs;
  RxBool showBakauheniMobilitasPenumpang = false.obs;

  // simpul data vars
  RxBool isLoadingSimpul = false.obs;
  Rx<Simpul?> simpulData = Rx<Simpul?>(null);
  Rx<List<Location>?> listFilteredSimpul = Rx<List<Location>>([]);

  Rx<String?> selectedSimpulMatra = Rx<String?>(null);
  Rx<Location?> selectedSimpul = Rx<Location?>(null);

  // cctv data vars
  RxBool isLoadingCctv = false.obs;
  Rx<List<String>> listCctvMatra = Rx<List<String>>([]);

  Rx<List<String>> listCctvLocation = Rx<List<String>>([]);
  Rx<List<CctvData>?> listSelectedCctv = Rx<List<CctvData>?>(null);
  Rx<List<CctvData>?> listCctv = Rx<List<CctvData>?>(null);
  Rx<List<CctvData>?> listFilteredCctv = Rx<List<CctvData>?>(null);

  Rx<String?> selectedCctvMatra = Rx<String?>(null);
  Rx<String?> selectedCctvLocation = Rx<String?>(null);
  Rx<CctvData?> selectedCctvData = Rx<CctvData?>(null);

  // incident data vars
  RxBool isLoadingIncidentData = false.obs;
  Rx<List<IncidentReport>?> listIncidentData = Rx<List<IncidentReport>?>(null);

  List<String> matraOptions = [
    "jalan",
    "laut",
    "udara",
    "ka",
    "toll",
    "stasiun",
    "arteri",
  ];

  // create Focus vars
  TextEditingController titleController = TextEditingController();
  List<SimpulTransportasi> simpulTransportasiInput = <SimpulTransportasi>[].obs;

  // Todo update the request using selected cctv data
  List<CctvData> cctvInput = <CctvData>[].obs;
  List<FocusVideo> video30sInput = <FocusVideo>[].obs;
  List<FocusVideo> videoLiveStreamingInput = <FocusVideo>[].obs;

  String? videoTitle;
  String? videoLink;

  RxBool isLoadingSubmitData = false.obs;

  // init
  @override
  void onInit() {
    initDate();
    getFokusData(isRefresh: true);
    getIncidentData(isRefresh: true);

    ever(selectedRoutineRange, (_) => getFokusData(isRefresh: true));
    ever(isRoutine, (_) => getFokusData(isRefresh: false));
    ever(currentEvent, (_) => getFokusData(isRefresh: true));
    ever(selectedFilter, (_) => updateFokusData());
    ever(selectedCctvLocation, (_) => updateCctvList());
    ever(selectedCctvMatra, (_) => updateCctvList());
    ever(selectedSimpulMatra, (_) => updateSimpulData());
    super.onInit();
  }

  void updateCctvList() {
    selectedCctvData.value = null;
    listFilteredCctv.value = listCctv.value?.where((cctv) {
      final matchesMatra = selectedCctvMatra.value?.isNotEmpty ?? false
          ? cctv.matra?.toLowerCase() == selectedCctvMatra.value?.toLowerCase()
          : false;
      final matchesLokasi = selectedCctvLocation.value?.isNotEmpty ?? false
          ? cctv.provinceName?.toLowerCase() ==
              selectedCctvLocation.value?.toLowerCase()
          : false;

      return matchesMatra && matchesLokasi;
    }).toList();
  }

  // get focus methods
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

  void getFokusData({bool isRefresh = false}) async {
    if (isLoadingAggregateData.value) return;

    isLoadingAggregateData.value = true;
    try {
      if (!isRoutine.value) {
        await getEvent();
      }

      final result = await _focusRepository.getFokus(
        isRoutine.value
            ? selectedRoutineRange.value[0].toIso8601String()
            : null,
        isRoutine.value
            ? selectedRoutineRange.value[1].toIso8601String()
            : null,
        !isRoutine.value ? currentEvent.value?.id.toString() : null,
      );

      focusData.value = result;
      updateFokusData();
    } catch (e) {
      focusData.value = null;
      updateFokusData();
      debugPrint('Failed to fetch fokus data: ${e.toString()}');
    } finally {
      isLoadingAggregateData.value = false;
    }
  }

  Future<void> getEvent() async {
    if ((focusData.value?.simpulTransportasi?.isEmpty ?? true) &&
        currentEvent.value != null) {
      return;
    }
    if (eventList.value != null) return;

    List<domain_event.Event> event = [];

    final stream = _strategiRepository.getEvent(
      eventTypeFromString(
          focusData.value?.simpulTransportasi?.first.moda ?? ''),
    );

    await for (final data in stream) {
      event = data;
    }

    eventList.value = event;
    currentEvent.value ??= event.isNotEmpty ? event.first : null;
  }

  void getCctvData({bool isRefresh = false}) async {
    if (isLoadingCctv.value) return;
    if (currentEvent.value != null && !isRefresh) return;
    try {
      isLoadingCctv.value = false;
      _cctvRepository.getCCTV(CctvRequest()).listen(
        (result) {
          if (result != null) {
            listCctv.value = result.map((cctv) {
              cctv.matra = cctv.matra?.toUpperCase();
              cctv.cityName = cctv.cityName?.toUpperCase();
              return cctv;
            }).toList();

            updateSearchParams();
            isLoadingCctv.value = false;
          }
        },
        onDone: () {
          isLoadingCctv.value = false;
        },
      );
    } catch (e) {
      isLoadingCctv.value = false;
    }
  }

  void getSimpulData({bool isRefresh = false}) async {
    if (isLoadingSimpul.value) return;
    try {
      _strategiRepository.getDataPantau().listen(
        (result) {
          if (result != null) {
            simpulData.value = result;
            print('--------------------------------');
            print('ini value simpul jalan : ${simpulData.value?.jalan?.length}');
            print('ini value simpul laut : ${simpulData.value?.laut?.length}');
            debugPrint('ini value simpul udara : ${simpulData.value?.udara?.length}');
            debugPrint('ini value simpul ka : ${simpulData.value?.ka?.length}');
            debugPrint('ini value simpul toll : ${simpulData.value?.toll?.length}');
            debugPrint('ini value simpul toll2 : ${simpulData.value?.toll2?.length}');
            debugPrint('ini value simpul stasiun : ${simpulData.value?.stasiun?.length}');
            debugPrint('--------------------------------');
          }
        },
        onDone: () {
          isLoadingSimpul.value = false;
        },
      );
    } catch (e) {
      debugPrint('Failed to fetch simpul data: ${e.toString()}');
    } finally {
      isLoadingSimpul.value = false;
    }
  }

  void updateSearchParams() {
    listCctvMatra.value = listCctv.value
            ?.map((cctv) => cctv.matra?.capitalizeFirst ?? '')
            .toSet()
            .toList() ??
        [];
    listCctvLocation.value = listCctv.value
            ?.map((cctv) => cctv.provinceName?.capitalizeFirst ?? '')
            .toSet()
            .toList() ??
        [];
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

  void updateFokusData() {
    if (isRoutine.value) {
      // selectedDateRange.value = selectedRoutineRange.value.isNotEmpty
      //     ? "${DateFormat('dd MMM yyy').tryFormat(selectedRoutineRange.value[0])} - ${DateFormat('dd MMM yyy').tryFormat(selectedRoutineRange.value[1])}"
      //     : "";
      _updateDateRangeLabel();
      if (focusData.value == null) {
        currentSimpulTransportasi.value = [];
        return;
      }
      switch (selectedFilter.value) {
        case 0:
          currentSimpulTransportasi.value =
              focusData.value?.simpulTransportasi?.map((simpul) {
            return SimpulChartData(
              location: simpul.location,
              moda: simpul.moda,
              arrival: simpul.weekly?.arrival,
              departure: simpul.weekly?.departure,
              vehicleArrival: simpul.weekly?.vehicleArrival,
              vehicleDeparture: simpul.weekly?.vehicleDeparture,
            );
          }).toList();
          break;
        case 1:
          currentSimpulTransportasi.value =
              focusData.value?.simpulTransportasi?.map((simpul) {
            return SimpulChartData(
              location: simpul.location,
              moda: simpul.moda,
              arrival: simpul.monthly?.arrival,
              departure: simpul.monthly?.departure,
              vehicleArrival: simpul.monthly?.vehicleArrival,
              vehicleDeparture: simpul.monthly?.vehicleDeparture,
            );
          }).toList();
          break;
        default:
          currentSimpulTransportasi.value =
              focusData.value?.simpulTransportasi?.map((simpul) {
            return SimpulChartData(
              location: simpul.location,
              moda: simpul.moda,
              arrival: simpul.yearly?.arrival,
              departure: simpul.yearly?.departure,
              vehicleArrival: simpul.yearly?.vehicleArrival,
              vehicleDeparture: simpul.yearly?.vehicleDeparture,
            );
          }).toList();
      }
    } else {
      selectedDateRange.value = currentEvent.value != null
          ? "${DateFormat('dd MMM yyy').tryFormat(currentEvent.value!.tanggalMulai)} - ${DateFormat('dd MMM yyy').tryFormat(currentEvent.value!.tanggalSelesai)}"
          : "";
      if (focusData.value == null) {
        currentSimpulTransportasi.value = [];

        currentSimpulTransportasi.refresh();
        return;
      }
      currentSimpulTransportasi.value =
          focusData.value?.simpulTransportasi?.map((simpul) {
        return SimpulChartData(
          location: simpul.location,
          moda: simpul.moda,
          arrival: simpul.seasonal?.arrival,
          departure: simpul.seasonal?.departure,
          vehicleArrival: simpul.seasonal?.vehicleArrival,
          vehicleDeparture: simpul.seasonal?.vehicleDeparture,
        );
      }).toList();
    }

    currentSimpulTransportasi.refresh();
  }

  void updateSimpulData() {
    selectedSimpul.value = null;
    switch (selectedSimpulMatra.value) {
      case 'jalan':
        listFilteredSimpul.value = simpulData.value?.jalan;
        break;
      case 'laut':
        listFilteredSimpul.value = simpulData.value?.laut;
        break;
      case 'udara':
        listFilteredSimpul.value = simpulData.value?.udara;
        break;
      case 'ka':
        listFilteredSimpul.value = [
          ...?simpulData.value?.ka,
          ...?simpulData.value?.kai
        ];
        break;
      case 'toll':
        listFilteredSimpul.value = [
          ...?simpulData.value?.toll,
          ...?simpulData.value?.toll2
        ];
        break;
      case 'stasiun':
        listFilteredSimpul.value = simpulData.value?.stasiun;
        break;
      case 'arteri':
        listFilteredSimpul.value = simpulData.value?.arteri;
        break;
      default:
        listFilteredSimpul.value = [];
    }
  }

  void getIncidentData({bool isRefresh = false}) async {
    if (isLoadingIncidentData.value) return;
    if (listIncidentData.value != null && !isRefresh) return;

    isLoadingIncidentData.value = true;
    try {
      final result = await _modaRepository.getIncidentReport(
        null,
        IncidentReportRequest(
          page: "1",
          limit: "2",
          category: 'kecelakaan',
        ),
      );
      listIncidentData.value = result;
    } catch (e) {
      listIncidentData.value = null;
      debugPrint('Failed to fetch incident report: ${e.toString()}');
    } finally {
      isLoadingIncidentData.value = false;
    }
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
      getFokusData(isRefresh: true);
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

  // create focus methods

  void clearInputDialogState() {
    videoTitle = null;
    videoLink = null;
  }

  void saveInputSimpul() {
    simpulTransportasiInput.add(
      SimpulTransportasi(
        moda: selectedSimpulMatra.value,
        location: selectedSimpul.value?.nama,
        idLocation: selectedSimpul.value?.idLokasi,
      ),
    );
    clearInputDialogState();
  }

  void deleteSimpulNode(SimpulTransportasi node) {
    simpulTransportasiInput.remove(node);
  }

  void clearCctvInput() {
    selectedCctvMatra.value = null;
    selectedCctvLocation.value = null;
    selectedCctvData.value = null;
    listFilteredCctv.value = [];
  }

  void saveInputCCTV() {
    if (selectedCctvData.value != null) {
      cctvInput = cctvInput..add(selectedCctvData.value!);
    }
  }

  void deleteCCTVNode(CctvData node) {
    cctvInput = cctvInput..remove(node);
  }

  void saveInputVideo30s() {
    video30sInput.add(
      FocusVideo((b) => b
        ..judul = videoTitle
        ..link = videoLink),
    );
    clearInputDialogState();
  }

  void deleteVideo30sNode(FocusVideo node) {
    video30sInput.remove(node);
  }

  void saveInputLiveStream() {
    videoLiveStreamingInput.add(
      FocusVideo((b) => b
        ..judul = videoTitle
        ..link = videoLink),
    );
    clearInputDialogState();
  }

  void deleteLiveStreamNode(FocusVideo node) {
    videoLiveStreamingInput.remove(node);
  }

  Future<void> onSubmitnputFocus() async {
    if (isLoadingSubmitData.value) return;

    final submitSimpul = simpulTransportasiInput.map((simpul) {
      return CreateFocusRequestSimpulTransportasiInner((b) => b
        ..simpul = simpul.idLocation
        ..matra = simpul.moda
        ..moda = simpul.moda);
    });

    final submitCctv = cctvInput.map((cctv) {
      return CreateFocusRequestCctvInner((b) => b
        ..matra = cctv.matra
        ..simpul = cctv.id
        ..titikCctv = cctv.locationName);
    });

    isLoadingSubmitData.value = true;
    try {
      await _focusRepository.createFocus(
        CreateFocusRequest((b) => b
          ..judul = titleController.text
          ..simpulTransportasi =
              ListBuilder<CreateFocusRequestSimpulTransportasiInner>(
                  submitSimpul)
          ..cctv = ListBuilder<CreateFocusRequestCctvInner>(submitCctv)
          ..video30s = ListBuilder<FocusVideo>(video30sInput)
          ..videoLiveStreaming =
              ListBuilder<FocusVideo>(videoLiveStreamingInput)),
      );
      Get.snackbar(
        'Success',
        'Data berhasil disimpan',
        snackbarStatus: (status) {
          if (status == SnackbarStatus.CLOSED) {
            Get.back(result: {'created': true}, closeOverlays: true);
          }
        },
      );
    } catch (e) {
      debugPrint('Failed to fetch incident report: ${e.toString()}');
    } finally {
      isLoadingSubmitData.value = false;
    }
  }
}