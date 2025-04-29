import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/constant.dart';
import 'package:strategi_hub_app/constant/enum/laporan_enum.dart';
import 'package:strategi_hub_app/constant/file_type.dart';
import 'package:strategi_hub_app/data/models/response/report_data_response.dart';
import 'package:strategi_hub_app/domain/repositories/report_repository.dart';
import 'package:strategi_hub_app/utils/extentions/enum_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';

class LaporanController extends GetxController
    with GetTickerProviderStateMixin {
  final ReportRepository _reportRepository;
  late TabController tabController;
  RxInt selectedIndex = 0.obs;
  RxString title = 'Menu'.obs;

  // Report Data
  RxBool isLoadingReportData = false.obs;
  RxInt incidentPage = 1.obs;
  Rx<List<DateTime>> selectedAllReportRange = Rx<List<DateTime>>([]);
  Rx<List<ReportData>?> listReportData = Rx<List<ReportData>?>(null);
  Rx<List<ReportData>?> listFilteredReportData = Rx<List<ReportData>?>(null);
  RxString searchQuery = ''.obs;
  TextEditingController searchController = TextEditingController();

  // 2 Hours
  RxBool isLoadingTwoHoursData = false.obs;
  RxInt twoHoursPage = 1.obs;
  Rx<List<DateTime>> selectedTwoHoursRange = Rx<List<DateTime>>([]);
  Rx<List<ReportData>?> listTwoHoursData = Rx<List<ReportData>?>(null);
  Rx<List<ReportData>?> listFilteredTwoHoursData = Rx<List<ReportData>?>(null);
  RxString twoHoursSearchQuery = ''.obs;
  TextEditingController twoHoursSearchController = TextEditingController();

  // Daily PIT
  RxBool isLoadingDailyPITData = false.obs;
  RxInt dailyPITPage = 1.obs;
  Rx<List<DateTime>> selectedDailyPITRange = Rx<List<DateTime>>([]);
  Rx<List<ReportData>?> listDailyPITData = Rx<List<ReportData>?>(null);
  Rx<List<ReportData>?> listFilteredDailyPITData = Rx<List<ReportData>?>(null);
  RxString dailySearchQuery = ''.obs;
  TextEditingController dailySearchController = TextEditingController();

  // Weekly PIT
  RxBool isLoadingWeeklyPITData = false.obs;
  RxInt weeklyPITPage = 1.obs;
  Rx<List<DateTime>> selectedWeeklyPITRange = Rx<List<DateTime>>([]);
  Rx<List<ReportData>?> listWeeklyPITData = Rx<List<ReportData>?>(null);
  Rx<List<ReportData>?> listFilteredWeeklyPITData = Rx<List<ReportData>?>(null);
  RxString weeklySearchQuery = ''.obs;
  TextEditingController weeklySearchController = TextEditingController();

  // Shift report
  RxBool isLoadingShiftData = false.obs;
  RxInt shiftPage = 1.obs;
  Rx<List<DateTime>> selectedShiftRange = Rx<List<DateTime>>([]);
  Rx<List<ReportData>?> listShiftData = Rx<List<ReportData>?>(null);
  Rx<List<ReportData>?> listFilteredShiftData = Rx<List<ReportData>?>(null);
  RxString shiftSearchQuery = ''.obs;
  TextEditingController shiftSearchController = TextEditingController();

  LaporanController(this._reportRepository);
  @override
  void onInit() {
    tabController = TabController(length: getMenuList().length, vsync: this);
    listenTabSwitch();
    fetchData(true);
    ever(selectedIndex, (_) => fetchData(false));
    super.onInit();
  }

  List<LaporanEnum> getMenuList() {
    final listMenu = [
      LaporanEnum.laporanData,
      LaporanEnum.laporan2Jam,
      LaporanEnum.laporanShift,
      LaporanEnum.laporanDaily,
      LaporanEnum.laporanWeekly,
      LaporanEnum.poskoTerpadu,
      LaporanEnum.boothPoskoTerpadu,
      LaporanEnum.poskoLapangan,
      LaporanEnum.poskoLain,
      if (hasChildPermission('Kinerja_Pelaporan_'))
        LaporanEnum.kinerjaPelaporan,
    ];
    return listMenu;
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

      title.value = Constant.tabLaporan[selectedIndex.value];
      selectedIndex.refresh();
    });
  }

  // Todo: remove code ( add laporan feature are hidden in new design update )
  // onOpenAddLaporan() async {
  //   switch (selectedIndex.value) {
  //     case 0:
  //       break;
  //     case 1:
  //       break;
  //     case 2:
  //       await Get.toNamed(
  //         AddLaporanMingguanPage.routeName,
  //         arguments: {
  //           'type': 'mingguanPit',
  //         },
  //       )?.then(
  //         (value) {
  //           if (value != null && value['created'] == true) {
  //             fetchWeeklyPITData(true);
  //           }
  //         },
  //       );
  //       break;
  //     case 3:
  //       break;
  //     case 4:
  //       break;
  //     case 5:
  //       Get.toNamed(AddLaporanPage.routeName);
  //     case 6:
  //       Get.toNamed(AddLaporanPoskoPage.routeName);
  //     case 7:
  //       await Get.toNamed(AddLaporanPiketPage.routeName)?.then(
  //         (value) {
  //           if (value != null && value['created'] == true) {
  //             fetchIMShiftData(true);
  //           }
  //         },
  //       );
  //       break;
  //     default:
  //       break;
  //   }
  // }

  void fetchData(bool isRefresh) {
    switch (getMenuList()[selectedIndex.value]) {
      case LaporanEnum.laporanData:
        fetchReportData(isRefresh);
        break;
      case LaporanEnum.laporan2Jam:
        fetchtwoHoursReportData(isRefresh);
        break;
      case LaporanEnum.laporanShift:
        fetchShiftReportData(isRefresh);
        break;
      case LaporanEnum.laporanDaily:
        fetchDailyPITData(isRefresh);

      case LaporanEnum.laporanWeekly:
        fetchWeeklyPITData(isRefresh);
        break;
      case LaporanEnum.poskoTerpadu:
        fetchIntegratedPostData(isRefresh);
        break;
      case LaporanEnum.boothPoskoTerpadu:
        fetchIntegratedPostData(isRefresh);
        break;
      case LaporanEnum.poskoLapangan:
        fetchFieldPostData(isRefresh);
        break;
      case LaporanEnum.poskoLain:
        fetchFieldPostData(isRefresh);
        break;
      case LaporanEnum.kinerjaPelaporan:
        fetchReportingPerformanceData(isRefresh);
        break;
    }
  }

  void fetchReportData(bool isRefresh) async {
    if (isLoadingReportData.value) return;
    if (listReportData.value != null && !isRefresh) return;

    isLoadingReportData.value = true;
    try {
      final result = await _reportRepository.getReportList(
        LaporanEnum.laporanData,
      );

      listReportData.value = result;
      listFilteredReportData.value = result;
      isLoadingReportData.value = false;
    } catch (e) {
      listReportData.value = null;
      listFilteredReportData.value = null;
      isLoadingReportData.value = false;
      debugPrint('Failed to fetch incident report: ${e.toString()}');
    }
  }

  void fetchDailyPITData(bool isRefresh) async {
    if (isLoadingDailyPITData.value) return;
    if (listDailyPITData.value != null && !isRefresh) return;

    isLoadingDailyPITData.value = true;
    try {
      final result = await _reportRepository.getReportList(
        LaporanEnum.laporanDaily,
      );

      listDailyPITData.value = result;
      listFilteredDailyPITData.value = result;
      isLoadingDailyPITData.value = false;
    } catch (e) {
      listDailyPITData.value = null;
      listFilteredDailyPITData.value = null;
      isLoadingDailyPITData.value = false;
      debugPrint('Failed to fetch incident report: ${e.toString()}');
    }
  }

  void fetchWeeklyPITData(bool isRefresh) async {
    if (isLoadingWeeklyPITData.value) return;
    if (listWeeklyPITData.value != null && !isRefresh) return;

    isLoadingWeeklyPITData.value = true;
    try {
      final result = await _reportRepository.getReportList(
        LaporanEnum.laporanWeekly,
      );

      listWeeklyPITData.value = result;
      listFilteredWeeklyPITData.value = result;
      isLoadingWeeklyPITData.value = false;
    } catch (e) {
      listWeeklyPITData.value = null;
      listFilteredWeeklyPITData.value = null;
      isLoadingWeeklyPITData.value = false;
      debugPrint('Failed to fetch incident report: ${e.toString()}');
    }
  }

  void fetchShiftReportData(bool isRefresh) async {
    if (isLoadingShiftData.value) return;
    if (listShiftData.value != null && !isRefresh) return;

    isLoadingShiftData.value = true;
    try {
      final result = await _reportRepository.getReportList(
        LaporanEnum.laporanShift,
      );

      listShiftData.value = result;
      listFilteredShiftData.value = result;
      isLoadingShiftData.value = false;
    } catch (e) {
      listShiftData.value = null;
      listFilteredShiftData.value = null;
      isLoadingShiftData.value = false;
      debugPrint('Failed to fetch incident report: ${e.toString()}');
    }
  }

  void fetchtwoHoursReportData(bool isRefresh) async {
    if (isLoadingTwoHoursData.value) return;
    if (listTwoHoursData.value != null && !isRefresh) return;

    isLoadingTwoHoursData.value = true;
    try {
      final result = await _reportRepository.getReportList(
        LaporanEnum.laporan2Jam,
      );

      listTwoHoursData.value = result;
      listFilteredTwoHoursData.value = result;
      isLoadingTwoHoursData.value = false;
    } catch (e) {
      listTwoHoursData.value = null;
      listFilteredTwoHoursData.value = null;
      isLoadingTwoHoursData.value = false;
      debugPrint('Failed to fetch incident report: ${e.toString()}');
    }
  }

  void fetchIntegratedPostData(bool isRefresh) {
    // TODO: Implement the logic to fetch data for Integrated Post
  }

  void fetchFieldPostData(bool isRefresh) {
    // TODO: Implement the logic to fetch data for Field Post
  }

  void fetchReportingPerformanceData(bool isRefresh) {
    // TODO: Implement the logic to fetch data for Reporting Performance
  }

  Future<void> downloadFile(String? url, String? fileName,
      {LaporanEnum type = LaporanEnum.laporanData}) async {
    if (url == null || url.isEmpty) {
      Get.snackbar('Error', 'URL tidak valid');
      return;
    }

    try {
      await Permission.notification.request();

      // Get the directory for downloads
      final downloadDir = await getDownloadPath();

      if (downloadDir == null) {
        Get.back(); // Dismiss loading
        Get.snackbar('Error', 'Tidak dapat menemukan direktori download');
        return;
      }

      final fileName =
          Uri.tryParse(url)?.pathSegments.last.split('?').first ?? '';

      final existingFile = await findExistingFile(
        fileName,
        type,
      );
      if (existingFile != null) {
        _openOtherTypeFile(existingFile);
        return;
      }

      // Show loading indicator
      Get.dialog(
        Center(child: BouncingLoader()),
        barrierDismissible: false,
      );

      final taskid = await FlutterDownloader.enqueue(
        url: url,
        savedDir: '$downloadDir/StrategiHub/${type.formattedName}',
        showNotification: true,
        openFileFromNotification: true,
      );

      // Dismiss loading
      Get.back();
      if (taskid != null) {
        FlutterDownloader.open(taskId: taskid);
      }
    } catch (e) {
      // Dismiss loading
      Get.back();

      // Show error snackbar
      Get.snackbar(
        'Error',
        'Gagal mendownload file: ${e.toString()}',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void _openOtherTypeFile(String filePath) async {
    final extension = path.extension(filePath);
    await OpenFile.open(filePath, type: types[extension]);
  }

  Future<String?> findExistingFile(String fileName, LaporanEnum type) async {
    // Get the app's Download directory
    Directory downloadsDir = Directory(
        '${await getDownloadPath() ?? ''}/StrategiHub/${type.formattedName}');

    if (!downloadsDir.existsSync()) {
      downloadsDir.createSync(recursive: true);
    }

    List<FileSystemEntity> files = downloadsDir.listSync();
    String? filePath;

    // Try to find the file with any extension
    for (var file in files) {
      if (file is File && file.path.contains(fileName)) {
        filePath = file.path;
      }
    }
    return filePath;
  }

  Future<String?> getDownloadPath() async {
    Directory? directory;
    try {
      if (Platform.isIOS) {
        directory = await getApplicationDocumentsDirectory();
      } else {
        directory = Directory('/storage/emulated/0/Download');
        if (!await directory.exists()) {
          directory = await getExternalStorageDirectory();
        }
      }
    } catch (err) {
      debugPrint("Cannot get download folder path");
    }
    return directory?.path;
  }

  List<ReportData>? filterData(List<ReportData>? data, String query) {
    if (data == null) return null;

    if (query.isEmpty) return data;

    return data
        .where((element) =>
            element.namaData?.toLowerCase().contains(query.toLowerCase()) ??
            false)
        .toList();
  }
}
