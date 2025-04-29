import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/domain/entities/performance_report.dart';
import 'package:strategi_hub_app/domain/repositories/report_repository.dart';
import 'package:strategi_hub_app/utils/permission.dart';

class KinerjaLaporanController extends GetxController
    with GetTickerProviderStateMixin {
  final ReportRepository _reportRepository;

  KinerjaLaporanController(this._reportRepository);
  List<String> listTahun = List.generate(
    10,
    (index) => (DateTime.now().year - index).toString(),
  );
  RxString selectedModa = "Angkutan Udara".obs;
  RxString selectedTahun = DateTime.now().year.toString().obs;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;

  RxList<PerformanceReport?> listReport = <PerformanceReport?>[].obs;

  @override
  void onInit() {
    super.onInit();
    getReport();

    ever(selectedModa, (_) => getReport());
    ever(selectedTahun, (_) => getReport());
  }

  List<ModaType> listModa = [
    if (hasPermission(Permission.kinerjaPelaporanUdara)) ModaType.udara,
    if (hasPermission(Permission.kinerjaPelaporanPenyebrangan)) ModaType.asdp,
    if (hasPermission(Permission.kinerjaPelaporanLaut)) ModaType.laut,
    if (hasPermission(Permission.kinerjaPelaporanPerkeretaapian))
      ModaType.stasiun,
    if (hasPermission(Permission.kinerjaPelaporanJalan)) ModaType.jalan,
  ];
  List<Color> listColor = [
    Color(0xFF0070D2),
    Color(0xFF008EDF),
    Color(0xFF007A4F),
    Color(0xFFFFC000),
  ];

  void getReport() {
    isLoading.value = true;
    isError.value = false;
    listReport.value = [];
    final modaType = ModaTypeExtension.getModaType(selectedModa.value);
    _reportRepository.getReport(selectedTahun.value, modaType.name).listen(
      (data) {
        if (data.isNotEmpty) {
          listReport.value = data;
        }
      },
      onDone: () {
        isLoading.value = false;
      },
      onError: (e) {
        debugPrint('Failed to fetch report: ${e.toString()}');
        isError.value = true;
        isLoading.value = false;
      },
    );
  }
}
