import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/domain/entities/report_approval.dart';
import 'package:strategi_hub_app/domain/repositories/report_repository.dart';

class ApprovalLaporanController extends GetxController
    with GetTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  final ReportRepository _reportRepository;

  // All Report
  RxBool isLoadingAllApprovalReportData = false.obs;
  RxBool isLoadingPaginationApprovalReportData = false.obs;
  Rx<List<DateTime>> selectedAllApprovalReportRange = Rx<List<DateTime>>([]);
  Rx<List<ReportApproval>?> listAllApprovalReportData =
      Rx<List<ReportApproval>?>(null);
  Rx<List<ReportApproval>?> listFilteredAllApprovalReportData =
      Rx<List<ReportApproval>?>(null);
  RxString searchQuery = ''.obs;
  RxInt page = 1.obs;
  RxInt limit = 30.obs;
  RxBool isHasReachMax = false.obs;

  ApprovalLaporanController(this._reportRepository);

  @override
  void onInit() {
    super.onInit();
    fetchAllData(true);
  }

  void fetchAllData(bool isRefresh, {String search = ''}) async {
    if (isLoadingAllApprovalReportData.value ||
        isLoadingPaginationApprovalReportData.value) {
      return;
    }
    if (listAllApprovalReportData.value != null &&
        !isRefresh &&
        isHasReachMax.value) {
      return;
    }

    _setLoadingState(isRefresh, true);

    try {
      if (isRefresh) {
        page.value = 1;
        isHasReachMax.value = false;
      }

      final result = await _reportRepository.getReportApprovalList(
        page: page.value,
        limit: limit.value,
        search: searchController.text,
      );

      if (result.length < limit.value) isHasReachMax.value = true;

      if (isRefresh) {
        listAllApprovalReportData.value = result;
      } else {
        listAllApprovalReportData.value?.addAll(result);
      }

      listFilteredAllApprovalReportData.value = listAllApprovalReportData.value;
      page.value++;
    } catch (e) {
      if (isRefresh) {
        listAllApprovalReportData.value = null;
        listFilteredAllApprovalReportData.value = null;
      }
      debugPrint('Failed to fetch incident report: ${e.toString()}');
    } finally {
      _setLoadingState(isRefresh, false);
    }
  }

  void _setLoadingState(bool isRefresh, bool state) {
    if (isRefresh) {
      isLoadingAllApprovalReportData.value = state;
    } else {
      isLoadingPaginationApprovalReportData.value = state;
    }
  }

  void _updateReportStatus(ReportApproval reportItem, StatusApproval status) {
    final updatedReportItem = reportItem;
    updatedReportItem.status = status;
    final index = listAllApprovalReportData.value
        ?.indexWhere((item) => item.id == reportItem.id);

    if (index != null && index != -1) {
      listAllApprovalReportData.value?[index] = updatedReportItem;
      listFilteredAllApprovalReportData.value =
          List.from(listAllApprovalReportData.value!);
      listFilteredAllApprovalReportData.refresh();
    }
  }

  Future<void> _handleReportAction(ReportApproval reportItem,
      StatusApproval status, Future<bool?> Function() action) async {
    final originalStatus = reportItem.status ?? StatusApproval.pending;
    _updateReportStatus(reportItem, status);

    try {
      final success = await action();
      if (!(success ?? false)) {
        _updateReportStatus(reportItem, originalStatus);
      }
    } catch (e) {
      _updateReportStatus(reportItem, originalStatus);
      debugPrint('Failed to update report: ${e.toString()}');
    }
  }

  void approveReport(ReportApproval reportItem) async {
    await _handleReportAction(reportItem, StatusApproval.approved,
        () => _reportRepository.approveReport(id: reportItem.id.toString()));
  }

  void rejectReport(ReportApproval reportItem) async {
    await _handleReportAction(reportItem, StatusApproval.rejected,
        () => _reportRepository.rejectReport(id: reportItem.id.toString()));
  }
}
