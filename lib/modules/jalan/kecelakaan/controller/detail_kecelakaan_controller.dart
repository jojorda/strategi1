import 'package:get/get.dart';
import 'package:strategi_hub_app/data/models/request/update_laporan_request.dart';
import 'package:strategi_hub_app/domain/entities/incident_report.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';

class DetailIncidentController extends GetxController {
  RxString? incidentId = ''.obs;
  final ModaRepository _modaRepository;

  DetailIncidentController(this._modaRepository);

  RxBool isLoading = false.obs;
  Rx<IncidentReport?> incidentReport = Rx<IncidentReport?>(null);

  @override
  void onInit() {
    incidentId?.value = Get.arguments;
    if (incidentId?.value != null) {
      fetchData();
    }
    super.onInit();
  }

  void fetchData() async {
    isLoading.value = true;

    try {
      final response =
          await _modaRepository.getDetailReport(incidentId?.value ?? '');

      incidentReport.value = response;
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    }
  }

  Future<bool> updateReport() async {
    isLoading.value = true;
    try {
      await _modaRepository.editReport(
        id: incidentId?.value ?? '',
        request: UpdateLaporanRequest(
          nama: incidentReport.value?.name ?? '-',
          waktuKejadian: incidentReport.value?.incidentTime ?? DateTime.now(),
          kronologiKejadian: incidentReport.value?.incidentChronology ?? '-',
          lokasi: incidentReport.value?.location ?? '-',
          laporanKejadianDetail: LaporanKejadianDetail(
            jenisKecelakaan: incidentReport.value?.accidentType ?? '-',
            matra: incidentReport.value?.sector ?? '-',
          ),
        ),
      );
      fetchData();
      isLoading.value = false;
      return true;
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('Error', 'Failed to update report');
      return false;
    }
  }
}
