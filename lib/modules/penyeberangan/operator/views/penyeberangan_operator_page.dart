import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/components/buttons/custom_outline_icon_button.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/domain/entities/operator.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/detail_jalan_operator_page.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';
import 'package:strategi_hub_app/modules/penyeberangan/controllers/penyeberangan_controller.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';

class PenyeberanganOperatorPage extends GetView<PenyeberanganController> {
  const PenyeberanganOperatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () async {
              controller.fetchData(true);
            },
            child: Column(
              children: [
                // HeaderFilter(
                //   isRutin: controller.isRoutine,
                //   onSelectedDate: controller.updateFilterDate,
                //   rangeGroupvalue: controller.selectedFilter,
                //   selectedDateRange: controller.selectedDateRange,
                //   listEvent: controller.eventList,
                //   selectedEvent: controller.currentEvent,
                //   eventType: controller.eventType,
                //   onSelectedEvent: (event) {
                //     controller.currentEvent.value = event;
                //   },
                //   updateEventType: (value) {
                //     controller.eventType.value = value;
                //   },
                // ),
                Container(
                  width: Get.width,
                  padding: EdgeInsets.symmetric(vertical: Sizes.s10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          onChanged: (value) =>
                              controller.searchOperator.value = value,
                          style: Get.textTheme.labelLarge!.copyWith(
                            fontSize:
                                isUnfolded ? 14 : (isSmallScreen ? 12 : 14),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: Sizes.s0, horizontal: Sizes.s14),
                            hintText: 'Cari',
                            hintStyle: Get.textTheme.labelLarge!.copyWith(
                                fontSize: Sizes.s12,
                                color: AppColors.lightGreyColor),
                            suffixIcon: Icon(
                              IconlyLight.search,
                              size: Sizes.s18,
                              color: AppColors.lightGreyColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(Sizes.s8),
                              borderSide:
                                  BorderSide(color: AppColors.outlineColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: Sizes.s10),
                      CustomOutlineIconButton(
                        icon: IconlyLight.filter_2,
                        color: AppColors.lightGreyColor,
                        onTap: () => _showSortingOptions(context),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Sizes.s6),
                Expanded(
                  child: Obx(() {
                    var itemCount =
                        controller.currentListOperatorData.value.length;
                    var data = controller.currentListOperatorData.value;

                    return ListView.builder(
                      itemCount: itemCount,
                      itemBuilder: (context, index) {
                        return OperatorItem(
                          data: data[index],
                        );
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
          Obx(() {
            return Positioned.fill(
              child: Visibility(
                visible: controller.isLoadingOperatorsData.value,
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onTap: () {},
                  child: Container(
                    color: Colors.white.withAlpha(70),
                    child: BouncingLoader(),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  void _showSortingOptions(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(Sizes.s16)),
      ),
      builder: (context) {
        return Container(
          constraints: BoxConstraints(maxHeight: screenHeight * 0.7),
          padding: EdgeInsets.all(Sizes.s16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(Sizes.s16)),
          ),
          child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Urutkan',
                style: Get.textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: Sizes.s16),
              Obx(() => _buildSortOption(
                    'Nama (A-Z)',
                    'name_asc',
                    controller.sortBy.value == 'name_asc',
                  )),
              Divider(),
              Obx(() => _buildSortOption(
                    'Nama (Z-A)',
                    'name_desc',
                    controller.sortBy.value == 'name_desc',
                  )),
              Divider(),
              Obx(() => _buildSortOption(
                    'OTP (Tertinggi)',
                    'otp_desc',
                    controller.sortBy.value == 'otp_desc',
                  )),
              Divider(),
              Obx(() => _buildSortOption(
                    'OTP (Terendah)',
                    'otp_asc',
                    controller.sortBy.value == 'otp_asc',
                  )),
              SizedBox(height: Sizes.s16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                    controller.applySort();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: Sizes.s12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.s8),
                    ),
                  ),
                  child: Text('Terapkan', style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14),
                    color: Colors.white,
                  ),),
                ),
              ),
              SizedBox(height: Sizes.s16),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSortOption(String title, String value, bool isSelected) {
    return GestureDetector(
      onTap: () {
        controller.sortBy.value = value;
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Sizes.s12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Get.textTheme.bodyMedium,
            ),
            if (isSelected)
              Icon(
                Icons.check_circle,
                color: AppColors.primaryColor,
                size: Sizes.s20,
              ),
          ],
        ),
      ),
    );
  }

  // void showSortDialog(
  //     BuildContext context, PenyeberanganController controller) {
  //   Get.defaultDialog(
  //     title: "Sort Data",
  //     titleStyle: TextStyle(
  //       fontSize: 18,
  //       fontWeight: FontWeight.bold,
  //       color: Colors.black,
  //     ),
  //     content: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         ListTile(
  //           title: Text(
  //             "Ascending",
  //             style: TextStyle(color: Colors.black),
  //           ),
  //           leading: Obx(() => Radio(
  //                 value: 'asc',
  //                 groupValue: controller.currentSortOrder.value,
  //                 onChanged: (value) {
  //                   if (value != null) {
  //                     controller.sortOperatorData(value); // Sort the data
  //                     Get.back(); // Close the dialog
  //                   }
  //                 },
  //               )),
  //         ),
  //         ListTile(
  //           title: Text(
  //             "Descending",
  //             style: TextStyle(color: Colors.black),
  //           ),
  //           leading: Obx(() => Radio(
  //                 value: 'desc',
  //                 groupValue: controller.currentSortOrder.value,
  //                 onChanged: (value) {
  //                   if (value != null) {
  //                     controller.sortOperatorData(value); // Sort the data
  //                     Get.back(); // Close the dialog
  //                   }
  //                 },
  //               )),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

// Pastikan showSortDialog tidak berada di dalam Widget build(), tapi tetap di dalam class.

class OperatorItem extends StatelessWidget {
  final Operator data;
  const OperatorItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.s6),
        border: Border.all(color: AppColors.outlineColor),
      ),
      margin: EdgeInsets.only(bottom: Sizes.s10),
      child: ExpandableNotifier(
        child: ScrollOnExpand(
          child: Builder(
            builder: (context) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      useInkWell: false,
                      animationDuration: Duration(milliseconds: 500),
                      hasIcon: false,
                    ),
                    header: Container(
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.s10, vertical: Sizes.s8),
                        child: Row(
                          children: [
                            Image.network(
                              data.logo ?? '',
                              height: isUnfolded
                                  ? Sizes.s20
                                  : (isSmallScreen ? Sizes.s20 : Sizes.s30),
                              width: isUnfolded
                                  ? Sizes.s20
                                  : (isSmallScreen ? Sizes.s20 : Sizes.s30),
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) =>
                                  SizedBox.shrink(),
                            ),
                            SizedBox(width: Sizes.s6),
                            Expanded(
                              child: Text(
                                data.name ?? '',
                                textAlign: TextAlign.start,
                                style: Get.textTheme.labelLarge!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: isUnfolded
                                        ? 14
                                        : (isSmallScreen ? 14 : 14)),
                              ),
                            ),
                            ExpandableIcon(
                              theme: ExpandableThemeData(
                                expandIcon: Icons.keyboard_arrow_down_rounded,
                                collapseIcon: Icons.keyboard_arrow_up_rounded,
                                iconColor: AppColors.darkGreyColor,
                                iconSize: Sizes.s24,
                                iconRotationAngle: 2,
                                iconPadding: EdgeInsets.zero,
                                hasIcon: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    collapsed: const SizedBox(),
                    expanded: GestureDetector(
                      onTap: () {
                        Get.toNamed(DetailJalanOperatorPage.routeName,
                            arguments: data);
                      },
                      child: Container(
                        width: Get.width,
                        margin: EdgeInsets.fromLTRB(
                            isUnfolded
                                ? Sizes.s10
                                : (isSmallScreen ? Sizes.s1 : Sizes.s10),
                            Sizes.s0,
                            isUnfolded
                                ? Sizes.s10
                                : (isSmallScreen ? Sizes.s1 : Sizes.s10),
                            Sizes.s10),
                        padding: EdgeInsets.symmetric(
                            vertical: Sizes.s6,
                            horizontal: isUnfolded
                                ? Sizes.s10
                                : (isSmallScreen ? Sizes.s1 : Sizes.s10)),
                        decoration: BoxDecoration(
                          color: AppColors.infoContainerColor,
                          borderRadius: BorderRadius.circular(Sizes.s4),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                                width: isUnfolded
                                    ? Sizes.s10
                                    : (isSmallScreen ? Sizes.s5 : Sizes.s4)),
                            Expanded(
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            AssetConstant.cs,
                                            color: AppColors.blackColor,
                                            height: isUnfolded
                                                ? Sizes.s20
                                                : (isSmallScreen
                                                    ? Sizes.s11
                                                    : Sizes.s20),
                                            width: isUnfolded
                                                ? Sizes.s20
                                                : (isSmallScreen
                                                    ? Sizes.s11
                                                    : Sizes.s20),
                                          ),
                                          SizedBox(
                                              width: isUnfolded
                                                  ? Sizes.s8
                                                  : (isSmallScreen
                                                      ? Sizes.s4
                                                      : Sizes.s8)),
                                          Flexible(
                                            child: SizedBox(
                                              width: 100,
                                              child: Text(
                                                data.name ?? '',
                                                style: Get.textTheme.bodySmall!
                                                    .copyWith(
                                                  fontSize: isUnfolded
                                                      ? 14
                                                      : (isSmallScreen ? 12 : 14),
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          Text('  |  ',
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded
                                                          ? 14
                                                          : (isSmallScreen
                                                              ? 12
                                                              : 12))),
                                          Text(data.contactPhone ?? '',
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded
                                                          ? 14
                                                          : (isSmallScreen
                                                              ? 12
                                                              : 12))),
                                        ],
                                      ),
                                      SizedBox(
                                          height: isUnfolded
                                              ? Sizes.s6
                                              : (isSmallScreen
                                                  ? Sizes.s4
                                                  : Sizes.s6)),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            AssetConstant.boatIcon,
                                            color: AppColors.blackColor,
                                            height: isUnfolded
                                                ? Sizes.s20
                                                : (isSmallScreen
                                                    ? Sizes.s11
                                                    : Sizes.s20),
                                            width: isUnfolded
                                                ? Sizes.s20
                                                : (isSmallScreen
                                                    ? Sizes.s11
                                                    : Sizes.s20),
                                          ),
                                          SizedBox(
                                              width: isUnfolded
                                                  ? Sizes.s8
                                                  : (isSmallScreen
                                                      ? Sizes.s4
                                                      : Sizes.s8)),
                                          Text(
                                              (data.fleetSize ?? 0)
                                                  .toDotSeparated(),
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded
                                                          ? 14
                                                          : (isSmallScreen
                                                              ? 12
                                                              : 14))),
                                          SizedBox(
                                              width: isUnfolded
                                                  ? Sizes.s60
                                                  : (isSmallScreen
                                                      ? Sizes.s20
                                                      : Sizes.s60)),
                                          SvgPicture.asset(
                                            AssetConstant.users,
                                            color: AppColors.blackColor,
                                            height: isUnfolded
                                                ? Sizes.s14
                                                : (isSmallScreen
                                                    ? Sizes.s11
                                                    : Sizes.s14),
                                            width: isUnfolded
                                                ? Sizes.s14
                                                : (isSmallScreen
                                                    ? Sizes.s11
                                                    : Sizes.s14),
                                          ),
                                          SizedBox(
                                              width: isUnfolded
                                                  ? Sizes.s8
                                                  : (isSmallScreen
                                                      ? Sizes.s4
                                                      : Sizes.s8)),
                                          Text(
                                              (data.passengerCount ?? 0)
                                                  .toDotSeparated(),
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded
                                                          ? 14
                                                          : (isSmallScreen
                                                              ? 12
                                                              : 14))),
                                          Spacer(),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Sizes.s6),
                                                color: AppColors.redOtpColor),
                                            padding: EdgeInsets.symmetric(
                                                vertical: Sizes.s4,
                                                horizontal: Sizes.s6),
                                            child: Center(
                                              child: Text(
                                                'OTP ${data.otpRate ?? '0'} %',
                                                style: Get.textTheme.titleSmall!
                                                    .copyWith(
                                                        color: AppColors
                                                            .whiteColor,
                                                        fontSize: isUnfolded
                                                            ? 14
                                                            : (isSmallScreen
                                                                ? 12
                                                                : 14)),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
