import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/buttons/custom_outline_icon_button.dart';
import 'package:strategi_hub_app/components/forms/custom_search_field.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/domain/entities/report_approval.dart';
import 'package:strategi_hub_app/modules/laporan/components/approval_button.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/approval_laporan_controller.dart';
import 'package:strategi_hub_app/modules/laporan/views/detail_approval_laporan_page.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class ApprovalLaporanPage extends GetView<ApprovalLaporanController> {
  static String routeName = '/approval-laporan-page';
  const ApprovalLaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'LAPORAN',
      body: Container(
        width: Get.width,
        padding: EdgeInsets.fromLTRB(
          Sizes.s20,
          Sizes.s10,
          Sizes.s20,
          Sizes.s0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(),
            SizedBox(height: Sizes.s10),
            _buildSearchAndFilterRow(context),
            SizedBox(height: Sizes.s12),
            _buildApprovalList(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Text(
      'DAFTAR LAPORAN',
      style: Get.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
    );
  }

  Widget _buildSearchAndFilterRow(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Row(
      children: [
        Expanded(
          child: CustomSearchField(
            controller: controller.searchController,
            onSubmitted: (p0) {
              controller.fetchAllData(true);
            },
            hintText: 'Cari',
            label: "Username",
                        labelFontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 13),
                        hintFontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12),
                        maxLines: 1,
                        validator: (value) {},
          ),
        ),
        SizedBox(width: Sizes.s6),
        CustomOutlineIconButton(
          icon: IconlyLight.filter_2,
          color: AppColors.lightGreyColor,
          onTap: () {},
        ),
        SizedBox(width: Sizes.s6),
        CustomOutlineIconButton(
          icon: IconlyLight.calendar,
          color: AppColors.lightGreyColor,
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildApprovalList() {
    return Expanded(
      child: Obx(() {
        return RefreshIndicator(
          onRefresh: () async {
            controller.fetchAllData(true);
          },
          child: controller.listFilteredAllApprovalReportData.value?.isEmpty ??
                  true
              ? SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Container(
                    height: Get.height * 0.8,
                    alignment: Alignment.center,
                    child: Text('No data available'),
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller
                      .listFilteredAllApprovalReportData.value?.length,
                  itemBuilder: (context, index) {
                    final item = controller
                        .listFilteredAllApprovalReportData.value?[index];
                    return _buildApprovalListItem(item, index);
                  },
                ),
        );
      }),
    );
  }

  Widget _buildApprovalListItem(ReportApproval? item, int index) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(DetailApprovalLaporanPage.routeName, arguments: item?.id);
      },
      child: Container(
        padding: EdgeInsets.only(bottom: Sizes.s10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${(index + 1)}.'),
            SizedBox(width: Sizes.s10),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item?.nama ?? '',
                          style: Get.textTheme.labelLarge,
                        ),
                        SizedBox(height: Sizes.s2),
                        Text(
                          '${item?.event ?? ''} | ${DateFormat('dd MMM yyyy HH:mm').tryFormat(item?.createdAt?.toLocal())} WIB',
                          style: Get.textTheme.bodySmall!
                              .copyWith(color: AppColors.darkGreyColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: Sizes.s6),
                  _buildApprovalStatusIcon(item),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildApprovalStatusIcon(ReportApproval? item) {
    if (item?.status == StatusApproval.approved) {
      return Container(
        decoration: BoxDecoration(
          color: AppColors.darkGreenColor,
          borderRadius: BorderRadius.circular(Sizes.s50),
        ),
        padding: EdgeInsets.all(Sizes.s8),
        child: Icon(
          Icons.check,
          size: Sizes.s18,
          color: AppColors.whiteColor,
        ),
      );
    } else if (item?.status == StatusApproval.rejected) {
      return Container(
        decoration: BoxDecoration(
          color: AppColors.dangerColor,
          borderRadius: BorderRadius.circular(Sizes.s50),
        ),
        padding: EdgeInsets.all(Sizes.s8),
        child: Icon(
          Icons.close,
          size: Sizes.s18,
          color: AppColors.whiteColor,
        ),
      );
    } else {
      return ApprovalButton(
        onApprove: () {
          if (item != null) {
            controller.approveReport(item);
          }
        },
        onReject: () {
          if (item != null) {
            controller.rejectReport(item);
          }
        },
      );
    }
  }
}
