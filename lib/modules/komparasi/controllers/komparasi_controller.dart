import 'dart:async';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/constant/constant.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/domain/entities/comparison_data.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/domain/entities/pantau.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/modules/komparasi/models/komparasi_model.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class KomparasiController extends GetxController {
  final StrategiRepository _strategiRepository;
  final ModaRepository _modaRepository;
  late TabController tabController;

  // Constants to avoid multiple string instantiations
  final List<String> matraTypes = [
    'jalan',
    'asdp',
    'laut',
    'udara',
    'ka',
    'toll',
    'stasiun',
    'arteri'
  ];

  final List<String> matraOptions = [
    'Jalan',
    'Penyeberangan',
    'Laut',
    'Udara',
    'Perkerataapian',
    'Toll',
    'Stasiun',
    'Arteri'
  ];

  // Controllers and state variables
  final ExpandableController expandableController = ExpandableController();
  RxBool isExpand = false.obs;
  RxBool isRutin = false.obs;
  RxBool viewFokus = false.obs;
  RxBool isLoadingUpdate = false.obs;
  RxString addMatra = ''.obs;
  RxString addSimpul = ''.obs;
  RxInt groupValue = 1.obs;
  RxInt selectedFilter = 1.obs;

  // Date related state
  Rx<List<DateTime>> selectedRange = Rx<List<DateTime>>([]);
  Rx<List<DateTime>> selectedRoutineRange = Rx<List<DateTime>>([]);
  RxString selectedDateRange = ''.obs;
  Rx<List<DateTime>> selectedDates = Rx<List<DateTime>>([]);
  PickDateType pickDateType = PickDateType.week;

  // Event related state
  Rx<Event?> currentEvent = Rx<Event?>(null);
  RxString eventType = RxString("");
  Rx<List<Event>?> eventList = Rx<List<Event>?>(null);
  RxBool isRoutine = false.obs;

  // Loading and data state
  Rx<List<bool>> listLoadingState = Rx<List<bool>>([]);
  Rx<Simpul?> simpul = Rx<Simpul?>(null);
  Rx<List<Location>> listSimpul = Rx<List<Location>>([]);
  Rx<List<ComparisonData>> listComparisonData = Rx<List<ComparisonData>>([]);
  final Rx<List<KomparasiModel>> listKomparasi = Rx<List<KomparasiModel>>([]);

  // Cache for comparison data to avoid redundant API calls
  final Map<String, ComparisonData> _comparisonCache = {};

  KomparasiController(this._strategiRepository, this._modaRepository);

  @override
  void onInit() {
    super.onInit();
    initDate();
    getEvent();
    expandableController.addListener(() {
      isExpand.value = expandableController.expanded;
    });
    fetchSimpul();

    // Set up reactive listeners
    ever(isRoutine, (_) => updateCompareData());
    ever(addMatra, (_) => updateListSimpul());
    ever(selectedRoutineRange, (_) => reloadComparedFilter());
    ever(currentEvent, (_) {
      onEventChange();
      reloadComparedFilter();
    });
  }

  void reloadComparedFilter() {
    // Clear cache when filters change
    _comparisonCache.clear();
    listComparisonData.value = [];
    updateCompareData();
  }

  void onEventChange() {
    if (currentEvent.value != null) {
      selectedDateRange.value =
          "${DateFormat('dd MMM yyy').tryFormat(currentEvent.value!.tanggalMulai)} - ${DateFormat('dd MMM yyy').tryFormat(currentEvent.value!.tanggalSelesai)}";
    } else {
      selectedDateRange.value = "";
    }
  }

  void initDate() {
    final now = DateTime.now();
    final firstDayOfMonth = DateTime(now.year, now.month, 1);
    final lastDayOfMonth = DateTime(now.year, now.month + 1, 0);

    selectedRoutineRange.value = [firstDayOfMonth, lastDayOfMonth];
    selectedDateRange.value =
        "${DateFormat('dd MMM yyy').tryFormat(firstDayOfMonth)} - ${DateFormat('dd MMM yyy').tryFormat(lastDayOfMonth)}";
  }

  Future<void> updateCompareData() async {
    if (isLoadingUpdate.value) return;
    isLoadingUpdate.value = true;

    // Process each item individually and refresh immediately for loading states
    for (var i = 0; i < listKomparasi.value.length; i++) {
      var element = listKomparasi.value[i];

      // Set loading state for this specific item
      listKomparasi.value[i] = element.copyWith(isLoading: true);
      listKomparasi.refresh();

      try {
        var currentLocationComparison = await fetchKomparasi(
          matra: element.comparisonTitle,
          simpul: int.tryParse(element.currentLocation.idLokasi ?? '') ?? 0,
        );

        var comparedLocation = element.comparedLocation ??
            getListSimpul(element.comparisonTitle)
                .where((e) => e.idLokasi != element.currentLocation.idLokasi)
                .firstOrNull;

        listKomparasi.value[i] = element.copyWith(
          comparedLocation: comparedLocation,
        );
        listKomparasi.refresh();

        var comparedLocationComparison = await fetchKomparasi(
          matra: element.comparisonTitle,
          simpul: int.tryParse(comparedLocation?.idLokasi ?? '') ?? 0,
        );

        // Update with new data and set loading to false
        listKomparasi.value[i] = element.copyWith(
          comparedLocation: comparedLocation,
          comparedLocationComparison: comparedLocationComparison,
          currentLocationComparison: currentLocationComparison,
          isLoading: false,
        );

        listKomparasi.refresh();
      } catch (e) {
        // Handle error but still clear loading state
        listKomparasi.value[i] = element.copyWith(isLoading: false);
        debugPrint(
            'Error updating comparison for ${element.comparisonTitle}: ${e.toString()}');
        listKomparasi.refresh();
      }
    }

    isLoadingUpdate.value = false;
  }

  void fetchSimpul() async {
    try {
      _strategiRepository.getDataPantau().listen((result) {
        if (result != null) {
          simpul.value = result;
        }
      });
    } catch (e) {
      debugPrint('Failed to fetch pantau data: ${e.toString()}');
    }
  }

  void updateListSimpul() {
    addSimpul.value = '';
    listSimpul.value = _getLocationsForMatra(addMatra.value);
  }

  List<Location> getListSimpul(String matra) {
    return _getLocationsForMatra(matra);
  }

  // Helper method to get locations for a specific matra type
  List<Location> _getLocationsForMatra(String matra) {
    if (simpul.value == null) return [];
    if (matra.isEmpty) return [];

    switch (matraTypes[matraOptions.indexOf(matra)]) {
      case 'jalan':
        return simpul.value!.jalan ?? [];
      case 'asdp':
        return simpul.value!.asdp ?? [];
      case 'laut':
        return simpul.value!.laut ?? [];
      case 'udara':
        return simpul.value!.udara ?? [];
      case 'ka':
        final data = simpul.value!.ka ?? [];
        return data..addAll(simpul.value!.kai ?? []);
      case 'toll':
        final data = simpul.value!.toll ?? [];
        return data..addAll(simpul.value!.toll2 ?? []);
      case 'stasiun':
        return simpul.value!.stasiun ?? [];
      case 'arteri':
        return simpul.value!.arteri ?? [];
      default:
        return [];
    }
  }

  Future<ComparisonData?> fetchKomparasi({
    String matra = '',
    int simpul = 0,
  }) async {
    final cacheKey = '${matra}_${simpul}_${isRoutine.value}_'
        '${isRoutine.value ? selectedRoutineRange.value[0].millisecondsSinceEpoch : ''}_'
        '${isRoutine.value ? selectedRoutineRange.value[1].millisecondsSinceEpoch : ''}'
        '${!isRoutine.value ? currentEvent.value?.id : ''}';

    // Check cache first for faster retrieval
    if (_comparisonCache.containsKey(cacheKey)) {
      return _comparisonCache[cacheKey];
    }

    // Check if it exists in the current list first
    final existingComparison = listComparisonData.value
        .where(
          (e) =>
              e.idLocation == simpul &&
              e.moda?.toLowerCase() == matra &&
              e.isRoutine == isRoutine.value,
        )
        .firstOrNull;

    if (existingComparison != null) {
      _comparisonCache[cacheKey] = existingComparison;
      return existingComparison;
    }

    try {
      final result = await _modaRepository.getComparation(
        modaType: matraTypes[matraOptions.indexOf(matra)],
        idLocation: simpul,
        tanggalAkhir1: isRoutine.value ? selectedRoutineRange.value[1] : null,
        tanggalAwal1: isRoutine.value ? selectedRoutineRange.value[0] : null,
        event: !isRoutine.value ? currentEvent.value?.id.toString() : null,
      );

      if (result != null) {
        final enhancedResult = result.copyWith(
          moda: matra,
          isRoutine: isRoutine.value,
        );

        listComparisonData.value = listComparisonData.value
          ..add(enhancedResult);
        _comparisonCache[cacheKey] = enhancedResult;

        return enhancedResult;
      }
      return null;
    } catch (e) {
      debugPrint('Failed to fetch comparison data: ${e.toString()}');
      return null;
    }
  }

  void reorderData(int oldindex, int newindex) {
    if (newindex > oldindex) {
      newindex -= 1;
    }
    final items = listKomparasi.value.removeAt(oldindex);
    listKomparasi.value.insert(newindex, items);
    refresh();
    update();
  }

  Future<Event?> getEvent() async {
    // If we already have a current event, return it
    if (currentEvent.value != null) return currentEvent.value;

    // If we've already fetched events, use the first one
    if (eventList.value != null && eventList.value!.isNotEmpty) {
      return currentEvent.value = eventList.value!.first;
    }

    // Otherwise, fetch events - handle stream correctly for offline-first
    try {
      // Listen to the stream and process each emission
      final completer = Completer<Event>();
      bool isCompleted = false; // Flag to track completion
      _strategiRepository.getEvent(EventType.toll).listen((events) {
        eventList.value = events;
        currentEvent.value = events.firstOrNull;
        if (!isCompleted) {
          completer.complete(currentEvent.value);
          isCompleted = true; // Set the flag to true
        }
      });

      return completer.future;
    } catch (e) {
      debugPrint('Failed to fetch events: ${e.toString()}');
      return null;
    }
  }

  void updateToggleDeparture(KomparasiModel data) {
    final index = listKomparasi.value.indexOf(data);
    if (index == -1) return;

    listKomparasi.value[index] =
        data.copyWith(isDeparture: !(data.isDeparture ?? true));
    listKomparasi.refresh();
  }

  void updateComparedLocation(KomparasiModel data, String simpul) {
    final index = listKomparasi.value.indexOf(data);
    if (index == -1) return;

    final location = getListSimpul(data.comparisonTitle)
        .where((e) => e.nama == simpul)
        .firstOrNull;

    if (location == null) return;

    listKomparasi.value[index] = data.copyWith(comparedLocation: location);
    listKomparasi.refresh();
    updateCompareData();
  }

  void onDeleteFokus(KomparasiModel data) {
    listKomparasi.value = listKomparasi.value..remove(data);
    updateCompareData();
    listKomparasi.refresh();
  }

  void onAddFokus() {
    viewFokus.value = false;

    if (addMatra.value.isEmpty || addSimpul.value.isEmpty) {
      return;
    }

    viewFokus.value = true;
    final simpulLocation =
        listSimpul.value.where((e) => e.nama == addSimpul.value).firstOrNull;

    if (simpulLocation == null) {
      clearFokus();
      return;
    }

    // Collapse all other expandable panels
    for (var item in listKomparasi.value) {
      item.expandableController.expanded = false;
    }

    // Add new komparasi model
    final newModel = KomparasiModel(
      isDeparture: true,
      isHideArrival: matraTypes[matraOptions.indexOf(addMatra.value)] == 'asdp',
      comparisonTitle: addMatra.value,
      currentLocation: simpulLocation,
      expandableController: ExpandableController()..expanded = true,
    );

    listKomparasi.value = listKomparasi.value..add(newModel);
    updateCompareData();
    listKomparasi.refresh();
    clearFokus();
  }

  void clearFokus() {
    addMatra.value = '';
    addSimpul.value = '';
    expandableController.toggle();
  }

  void updateFilterDate(DateTime? firstDate, DateTime? lastDate) {
    if (firstDate == null) return;

    final lastDateValue = lastDate ?? defDate(firstDate);
    selectedRoutineRange.value = [firstDate, lastDateValue];
    selectedDateRange.value =
        "${DateFormat('MMM yyy').tryFormat(firstDate)} - ${DateFormat('MMM yyy').tryFormat(lastDateValue)}";
  }

  DateTime defDate(DateTime firstDate) {
    switch (selectedFilter.value) {
      case 0: // Week
        return firstDate.add(Duration(days: 6));
      case 1: // Month
        return DateTime(firstDate.year, firstDate.month + 1, 0);
      case 2: // Year
        return DateTime(firstDate.year, 12, 31);
      default:
        return DateTime(firstDate.year, firstDate.month, 1);
    }
  }

  // Clean up resources
  @override
  void onClose() {
    expandableController.dispose();
    for (var item in listKomparasi.value) {
      item.expandableController.dispose();
    }
    _comparisonCache.clear();
    super.onClose();
  }
}
