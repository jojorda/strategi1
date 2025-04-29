import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/data/models/enum/data_type.dart';
import 'package:strategi_hub_app/data/models/request/moda_request.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/domain/entities/news.dart';
import 'package:strategi_hub_app/domain/entities/summary.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/domain/repositories/news_repository.dart';
import 'package:strategi_hub_app/modules/home/views/home_page.dart';
import 'package:strategi_hub_app/utils/permission.dart';

class HomeController extends GetxController {
  final NewsRepository _newsRepository;
  final ModaRepository _modaRepository;
  final StrategiRepository _strategiRepository;

  PageController pageController = PageController();
  PageController pageMainMenuController = PageController();
  RxInt currentPageInfo = 0.obs;
  RxInt currentMainMenuPageIndex = 0.obs;
  RxBool isRutin = false.obs;
  RxInt selectedFilter = 2.obs;
  Rx<List<DateTime>> selectedRange = Rx<List<DateTime>>([]);
  Rx<List<DateTime>> selectedRoutineRange = Rx<List<DateTime>>([]);

  List<News> news = <News>[];
  Rx<News?> selectedNews = Rx<News?>(null);
  Rx<Summary?> routineSummary = Rx<Summary?>(null);
  Rx<Summary?> sessionalSummary = Rx<Summary?>(null);
  Rx<Event?> currentEvent = Rx<Event?>(null);
  Rx<List<Event>?> eventList = Rx<List<Event>?>(null);
  Rx<String> eventType = Rx<String>("");
  Rx<List<SalesData>?> currentGraph = Rx<List<SalesData>?>(null);
  Rx<List<Network>?> currentVehicle = Rx<List<Network>?>(null);
  Rx<List<Network>?> currentNetwork = Rx<List<Network>?>(null);
  Rx<Flight?> currentFlight = Rx<Flight?>(null);
  Rx<Sailing?> currentSailing = Rx<Sailing?>(null);

  RxBool isSummaryLoading = false.obs;

  List<String> titleInfo = [
    if (hasPermission(Permission.berandaMobilitasPenumpang))
      "Mobilitas Penumpang",
    if (hasPermission(Permission.berandaMobilitasSarana)) "Mobilitas Sarana",
    if (hasPermission(Permission.berandaMobilitasJaringan))
      "Mobilitas Jaringan",
    if (hasPermission(Permission.berandaPelayaranDomestikInternational))
      "Pelayaran Domestik & Internasional",
    if (hasPermission(Permission.berandaPenerbanganDomestikInternational))
      "Penerbangan Domestik & Internasional",
  ];

  HomeController(
      this._newsRepository, this._modaRepository, this._strategiRepository);

  @override
  void onInit() {
    selectedRoutineRange.value = [
      DateTime(DateTime.now().year, DateTime.now().month, 1),
      DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime(DateTime.now().year, DateTime.now().month + 1, 1)
            .subtract(Duration(days: 1))
            .day,
      ),
    ];

    getNews();
    selectGraph();
    ever(isRutin, (_) => selectGraph());
    ever(currentEvent, (_) => selectGraph(isRefresh: true));
    ever(selectedRoutineRange, (_) => selectGraph(isRefresh: true));
    ever(selectedFilter, (_) => updateDate());
    super.onInit();
  }

  void updateDate() {
    final now = DateTime.now().copyWith(
        hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
    final startOfMonth = DateTime(now.year, now.month, 1);
    final endOfMonth = DateTime(now.year, now.month + 1, 0);

    selectedRoutineRange.value = selectedFilter.value == 0
        ? [now.subtract(Duration(days: 6)), now]
        : selectedFilter.value == 1
            ? [startOfMonth, endOfMonth]
            : selectedFilter.value == 2
                ? [startOfMonth, endOfMonth]
                  : selectedFilter.value == 3
                      ? [DateTime(now.year, 1, 1), now]
                      : [startOfMonth, endOfMonth];
  }

  Stream<Summary?> getSummary(DataType type, bool isRefresh) async* {
    try {
      if (type == DataType.routine &&
          routineSummary.value != null &&
          isRefresh != true) {
        yield routineSummary.value;
      } else if (type == DataType.seasonal &&
          sessionalSummary.value != null &&
          isRefresh != true) {
        yield sessionalSummary.value;
      }
      Event? event;

      if (!isRutin.value) {
        event = await getEvent(isRefresh: isRefresh);
      }

      await for (final summary in _modaRepository.getSummary(
        type,
        type == DataType.routine
            ? ModaRequest(
                tanggalAwal1: selectedRoutineRange.value[0],
                tanggalAkhir1: selectedRoutineRange.value[1],
              )
            : ModaRequest(
                event: event?.id.toString(),
              ),
      )) {
        if (summary != null) {
          if (type == DataType.routine) {
            routineSummary.value = summary;
          } else {
            sessionalSummary.value = summary;
          }
          yield summary;
        }
      }
    } catch (e) {
      throw Exception('Failed to fetch summary: ${e.toString()}');
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

  void selectGraph({bool isRefresh = false}) async {
    if (isSummaryLoading.value) return;
    try {
      selectedRange.value = isRutin.value
          ? selectedRoutineRange.value
          : [
              currentEvent.value?.tanggalMulai ?? DateTime.now(),
              currentEvent.value?.tanggalSelesai ?? DateTime.now()
            ];
      isSummaryLoading.value = true;
      await for (final summary in getSummary(
          isRutin.value ? DataType.routine : DataType.seasonal, isRefresh)) {
        if (summary != null) {
          currentGraph.value = summary.graph
              ?.map((e) =>
                  SalesData(e.name ?? '', e.count?.toDouble() ?? 0.0, 0.0))
              .toList();
          currentVehicle.value = summary.vehicle;
          currentNetwork.value = summary.network;
          currentFlight.value = summary.flight;
          currentSailing.value = summary.sailing;
          isSummaryLoading.value = false;
        }
      }
      isSummaryLoading.value = false;
    } catch (e) {
      isSummaryLoading.value = false;
      debugPrint('Failed to fetch summary: ${e.toString()}');
    }
  }

  void getNews() async {
    _newsRepository.getNews().listen((news) {
      if (news.isNotEmpty) {
        this.news = news;
        selectedNews.value = news.first;
      }
    });
  }

  void selectNextNews() {
    if (news.isEmpty) return;
    final currentIndex = news.indexOf(selectedNews.value ?? news.first);
    selectedNews.value = news[(currentIndex + 1) % news.length];
  }

  void updateEventType(String type) {
    if (type == "Semua Event") {
      eventType.value = "Semua Event";
    } else if (type == "Nataru") {
      eventType.value = "NATAL";
    } else if (type == "Angkutan Lebaran") {
      eventType.value = "ANGLEB";
    }
  }

  void updateFilterDate(DateTime? firstDate, DateTime? lastDate) {
    if (firstDate != null) {
      final def = defDate(firstDate);
      final lstDate = lastDate ?? def;
      selectedRoutineRange.value = [firstDate, lstDate];
    }
  }

  DateTime defDate(DateTime firstDate) {
    switch (selectedFilter.value) {
      case 0:
        return firstDate.add(Duration(days: 6));
      case 1:
        return DateTime(firstDate.year, firstDate.month + 1, 0);
      case 2:
        return DateTime(firstDate.year, firstDate.month + 1, 0);
      case 3:
        return DateTime(firstDate.year, 12, 31);
      default:
        return DateTime(firstDate.year, firstDate.month, 1);
    }
  }
}
