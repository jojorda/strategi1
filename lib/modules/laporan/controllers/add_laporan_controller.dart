import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:strategi_hub_app/constant/enum/laporan_enum.dart';
import 'package:strategi_hub_app/domain/entities/district_data.dart';
import 'package:strategi_hub_app/domain/entities/performance_report.dart';
import 'package:strategi_hub_app/domain/entities/province_data.dart';
import 'package:strategi_hub_app/domain/repositories/master_repository.dart';
import 'package:strategi_hub_app/domain/repositories/report_repository.dart';

class AddLaporanController extends GetxController {
  final ReportRepository _reportRepository;
  final MasterRepository _masterRepository;
  AddLaporanController(this._reportRepository, this._masterRepository);

  TextEditingController dateFc = TextEditingController();
  TextEditingController dateKejadianFc = TextEditingController();

  Rx<String> reportType = Rx<String>('');
  Rx<String> reportName = Rx<String>('');
  Rx<DateTime?> reportDate = Rx<DateTime?>(null);
  Rx<String> reportDescription = Rx<String>('');
  Rx<String> reportCreator = Rx<String>('');
  Rx<String> reportApprover = Rx<String>('');
  Rx<String> reportEvent = Rx<String>('');

  // pim
  Rx<String> pickedFile = Rx<String>('');
  Rx<String> pickedFileName = ''.obs;
  Rx<String> pickedPhoto = Rx<String>('');
  Rx<String> pickedPhotoName = ''.obs;
  Rx<String> assignedPerson = Rx<String>('');
  Rx<String> pickedProvinsi = Rx<String>('');
  Rx<int> pickedProvinsiId = Rx<int>(0);
  Rx<String?> pickedKota = Rx<String?>(null);
  Rx<int> pickedKotaId = Rx<int>(0);
  Rx<String> pickedAngkutan = Rx<String>('');
  Rx<String> pickedUnit = Rx<String>('');
  Rx<String> reportKejadianMenonjol = Rx<String>('');
  Rx<String> reportKecelakaan = Rx<String>('');
  Rx<String> reportApproverUsername = Rx<String>('');
  Rx<String> reportApproverFullname = Rx<String>('');
  Rx<List<String>> followers = Rx<List<String>>(['']);
  Rx<String> reportPhotoCaption = Rx<String>('');
  Rx<List<MapEntry<String, String>>> userApproval =
      Rx<List<MapEntry<String, String>>>([]);

  RxBool isLoadingProvinsi = false.obs;
  RxBool isLoadingKota = false.obs;

  RxList<ProvinceData> provinces = RxList<ProvinceData>([]);
  RxList<DistrictData> districts = RxList<DistrictData>([]);

  List<String> angkutanOptions = [
    "jalan",
    "laut",
    "udara",
    "ka",
    "toll",
    "stasiun",
    "arteri",
  ];

  RxBool isLoading = false.obs;

  var latlongLocation = LatLng(0, 0).obs;
  RxBool isLoadMap = false.obs;

  @override
  void onInit() {
    super.onInit();
    final argument = Get.arguments as Map<String, dynamic>?;
    if (argument != null) {
      reportType.value = argument['type'];
    }
    getProvinsi();
    getUserApproval();
    ever(pickedProvinsiId, (_) => getDistrict());
  }

  Future<void> pickPdf() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result != null) {
      pickedFile.value = result.files.single.path ?? '';
      pickedFileName.value = result.files.single.name;
    }
  }

  Future<void> pickPhoto() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result != null) {
      pickedPhoto.value = result.files.single.path ?? '';
      pickedPhotoName.value = result.files.single.name;
    }
  }

  void pickProvinsi(String? provinceName) {
    pickedKotaId.value = 0;
    pickedKota.value = null;
    pickedProvinsiId.value = int.parse(
        provinces.firstWhere((element) => element.name == provinceName).id);
    pickedProvinsi.value = provinceName ?? '';
  }

  void pickKota(String? districtName) {
    pickedKotaId.value = int.parse(
        districts.firstWhere((element) => element.name == districtName).id);
    pickedKota.value = districtName ?? '';
  }

  void pickPersetujuan(String? username) {
    if (username == '') return;
    reportApproverUsername.value = username ?? '';
    final foundUser = userApproval.value.firstWhere(
        (element) => element.key == reportApproverUsername.value,
        orElse: () => const MapEntry('', ''));
    reportApproverFullname.value = foundUser.value;
  }

  // Todo : remove code ( add laporan are hidden in new updated design )
  // Future<void> addLaporan() async {
  //   isLoading.value = true;
  //   try {
  //     await _reportRepository.postReport(
  //       ReportRequest(
  //         type: LaporanEnum.mingguanPit.name,
  //         event: reportEvent.value,
  //         namaReport: reportName.value,
  //         tanggalReport: reportDate.value,
  //         deskripsiReport: reportDescription.value,
  //         pembuatReport: reportCreator.value,
  //         persetujuan: reportApproverUsername.value,
  //       ),
  //     );
  //     isLoading.value = false;
  //     Get.snackbar(
  //       'Success',
  //       'Data berhasil disimpan',
  //       snackbarStatus: (status) {
  //         if (status == SnackbarStatus.CLOSED) {
  //           Get.back(result: {'created': true}, closeOverlays: true);
  //         }
  //       },
  //     );
  //   } catch (e) {
  //     Get.snackbar(
  //       'Error',
  //       'Terjadi kesalahan saat menyimpan data',
  //     );
  //     isLoading.value = false;
  //   }
  // }

  // Future<void> addLaporanPiketIM() async {
  //   isLoading.value = true;
  //   try {
  //     await _reportRepository.postReport(
  //       ReportRequest(
  //         type: LaporanEnum.piketIm.name,
  //         event: reportEvent.value,
  //         namaReport: reportName.value,
  //         tanggalReport: reportDate.value,
  //         deskripsiReport: reportDescription.value,
  //         personil: assignedPerson.value,
  //         pengikut: followers.value.join(','),
  //         kejadianMenonjol: reportKejadianMenonjol.value,
  //         provinsi: pickedProvinsi.value,
  //         kabupaten: pickedKota.value,
  //         angkutan: pickedAngkutan.value,
  //         unitPelayanan: pickedUnit.value,
  //         kecelakaan: reportKecelakaan.value,
  //         persetujuan: reportApproverUsername.value,
  //         filePath: pickedFile.value,
  //         photoPath: pickedPhoto.value,
  //         captionPhoto: reportPhotoCaption.value,
  //       ),
  //     );
  //     isLoading.value = false;
  //     Get.snackbar(
  //       'Success',
  //       'Data berhasil disimpan',
  //       snackbarStatus: (status) {
  //         if (status == SnackbarStatus.CLOSED) {
  //           Get.back(result: {'created': true}, closeOverlays: true);
  //         }
  //       },
  //     );
  //   } catch (e) {
  //     debugPrint('Failed to add report: ${e.toString()}');
  //     Get.snackbar(
  //       'Error',
  //       'Terjadi kesalahan saat menyimpan data',
  //     );
  //     isLoading.value = false;
  //   }
  // }

  void getProvinsi() {
    _masterRepository.getProvinces().listen((provinsiList) {
      isLoadingProvinsi.value = false;
      provinces.value = provinsiList;
    }).onError((e) {
      isLoadingProvinsi.value = false;
      debugPrint('Failed to fetch provinces: ${e.toString()}');
    });
  }

  void getDistrict() {
    isLoadingKota.value = true;
    _masterRepository.getDistricts(pickedProvinsiId.value).listen((data) {
      isLoadingKota.value = false;
      districts.value = data;
    }).onError((e) {
      isLoadingKota.value = false;
      debugPrint('Failed to fetch districts: ${e.toString()}');
    });
  }

  void getUserApproval() {
    _masterRepository.getUserApproval().listen((data) {
      isLoading.value = false;
      userApproval.value = data
          .map((e) => MapEntry(e.username ?? '', e.fullname ?? ''))
          .toList();
    }).onError((e) {
      isLoading.value = false;
      debugPrint('Failed to fetch user approval: ${e.toString()}');
    });
  }
}
