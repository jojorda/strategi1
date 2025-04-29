import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/components/buttons/custom_outline_icon_button.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/domain/entities/operator.dart';
import 'package:strategi_hub_app/modules/jalan/operator/controllers/jalan_operator_controller.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/detail_jalan_operator_page.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';

class JalanOperatorPage extends GetView<JalanOperatorController> {
  const JalanOperatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
    return Column(
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
                  onChanged: (value) => controller.searchOperator(value),
                  style: Get.textTheme.labelLarge!.copyWith(
                    fontSize:
                        isUnfolded ? 14 : (isSmallScreen ? 14 : Sizes.s12),
                  ),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: Sizes.s0, horizontal: Sizes.s14),
                      hintText: 'Cari',
                      hintStyle: Get.textTheme.labelLarge!.copyWith(
                          fontSize: Sizes.s12, color: AppColors.lightGreyColor),
                      suffixIcon: Icon(
                        IconlyLight.search,
                        size: Sizes.s18,
                        color: AppColors.lightGreyColor,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Sizes.s8),
                          borderSide:
                              BorderSide(color: AppColors.outlineColor))),
                ),
              ),
              SizedBox(width: Sizes.s10),
              CustomOutlineIconButton(
                icon: IconlyLight.filter_2,
                color: AppColors.lightGreyColor,
                onTap: () {
                  _showSortingPopup(context);
                },
              ),
            ],
          ),
        ),
        SizedBox(height: Sizes.s6),
        Expanded(
          child: Obx(
            () {
              List<Operator> datas;
              if (controller.isRoutine.value) {
                // Use filtered routine operators list instead of the original list
                datas = controller.filteredRoutineOperators.value;
              } else {
                // Use filtered seasonal operators list instead of the original list
                datas = controller.filteredSeasonalOperators.value;
              }

              return Stack(
                children: [
                  Visibility(
                    visible: !controller.isLoadingOperatorsData.value,
                    child: datas.isEmpty
                        ? Center(
                            child: Text(
                              controller.currentSearchOperator.value.isEmpty
                                  ? "Tidak ada data"
                                  : "Tidak ada hasil untuk '${controller.currentSearchOperator.value}'",
                              style: Get.textTheme.bodyMedium!.copyWith(
                                  fontSize: isUnfolded
                                      ? 14
                                      : (isSmallScreen ? 14 : Sizes.s12)),
                            ),
                          )
                        : ListView.builder(
                            itemCount: datas.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return OperatorItem(
                                data: datas[index],
                              );
                            },
                          ),
                  ),
                  Visibility(
                    visible: controller.isLoadingOperatorsData.value,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }

  void _showSortingPopup(BuildContext context) {
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
      builder: (BuildContext context) {
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
                    fontWeight: FontWeight.w600,
                    fontSize:
                        isUnfolded ? 14 : (isSmallScreen ? 14 : Sizes.s12)),
              ),
              SizedBox(height: Sizes.s16),
              Obx(() {
                return _buildSortOption(
                  context,
                  'A-Z (Ascending)',
                  () {
                    controller.sortType.value = 'asc';
                  },
                  controller.sortType.value == 'asc',
                );
              }),
              Divider(height: Sizes.s24),
              Obx(() {
                return _buildSortOption(
                  context,
                  'Z-A (Descending)',
                  () {
                    controller.sortType.value = 'desc';
                  },
                  controller.sortType.value == 'desc',
                );
              }),
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

  Widget _buildSortOption(
      BuildContext context, String title, VoidCallback onTap, bool isSelected) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Sizes.s12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : Sizes.s12)),
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
}

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
                          horizontal: isUnfolded ? Sizes.s10 : Sizes.s6,
                          vertical: isUnfolded ? Sizes.s8 : Sizes.s4,
                        ),
                        child: Row(
                          children: [
                            Image.network(
                              data.logo ?? '',
                              errorBuilder: (context, error, stackTrace) =>
                                  SizedBox.shrink(),
                              height: isUnfolded
                                  ? Sizes.s20
                                  : (isSmallScreen ? Sizes.s20 : Sizes.s30),
                              width: isUnfolded
                                  ? Sizes.s20
                                  : (isSmallScreen ? Sizes.s20 : Sizes.s30),
                              fit: BoxFit.contain,
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
                                        : (isSmallScreen ? 14 : Sizes.s12)),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
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
                                    : (isSmallScreen ? Sizes.s5 : Sizes.s10)),
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
                                          // SizedBox(
                                          //     width: isUnfolded
                                          //         ? Sizes.s8
                                          //         : (isSmallScreen
                                          //             ? Sizes.s4
                                          //             : Sizes.s8)),
                                          Flexible(
                                            // flex: 1,
                                            child: Text(
                                              data.name ?? '',
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded
                                                          ? 14
                                                          : (isSmallScreen
                                                              ? 12
                                                              : Sizes.s12)),
                                              // maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text('  |  ',
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded
                                                          ? 14
                                                          : (isSmallScreen
                                                              ? 12
                                                              : Sizes.s12))),
                                          Expanded(
                                            flex: 2,
                                            child: Text(data.contactPhone ?? '',
                                                style: Get.textTheme.bodySmall!
                                                    .copyWith(
                                                        fontSize: isUnfolded
                                                            ? 14
                                                            : (isSmallScreen
                                                                ? 12
                                                                : Sizes.s12))),
                                          ),
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
                                            AssetConstant.miniBus,
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
                                                              : Sizes.s12))),
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
                                                              : Sizes.s12))),
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
                                                                ? 10
                                                                : Sizes.s12)),
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
