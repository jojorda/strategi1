import 'dart:async';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:strategi_hub_app/domain/repositories/report_repository.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

class DetailLaporanController extends GetxController {
  RxInt incidentId = 0.obs;
  RxBool isLoading = false.obs;

  final ReportRepository _reportRepository;

  Rx<Report?> reportData = Rx<Report?>(null);
  RxBool isViewDokumen = false.obs;
  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();

  DetailLaporanController(this._reportRepository);

  @override
  void onInit() {
    final argument = Get.arguments;
    if (argument is int) {
      incidentId.value = Get.arguments;
      fetchData();
    }
    super.onInit();
  }

  void fetchData() async {
    isLoading.value = true;

    try {
      final response =
          await _reportRepository.getReportDetail(id: incidentId.value);

      reportData.value = response;
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    }
  }

  onMapCreated(GoogleMapController cont) {
    controller.complete(cont);
  }
}
