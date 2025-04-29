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
import 'package:strategi_hub_app/modules/udara/operator/controllers/udara_operator_controller.dart';
import 'package:strategi_hub_app/modules/udara/operator/views/detail_udara_operator_page.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';

class UdaraOperatorPage extends GetView<UdaraOperatorController> {
  const UdaraOperatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
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
                    fontSize: Sizes.s12,
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
                  showSortOptions(
                    context,
                    controller.isAscending.value,
                    (isAscending) {
                      controller.sortOperators(isAscending);
                    },
                  );
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
                datas = controller.routineListOperatorData.value;
              } else {
                datas = controller.seasonalListOperatorData.value;
              }

              return Stack(
                children: [
                  Visibility(
                    visible: controller.isLoadingOperatorsData.value,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  Visibility(
                    visible: !controller.isLoadingOperatorsData.value,
                    child: datas.isEmpty
                        ? Center(
                            child: Text(
                              controller.currentSearchOperator.value.isEmpty
                                  ? "Tidak ada data"
                                  : "Tidak ada hasil untuk '${controller.currentSearchOperator.value}'",
                              style: Get.textTheme.bodyMedium!.copyWith(
                                fontSize:
                                    isUnfolded ? 14 : (isSmallScreen ? 14 : 14),
                              ),
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
                ],
              );
            },
          ),
        )
      ],
    );
  }

  void showSortOptions(
      BuildContext context, bool isAsc, Function(bool) onSelected) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(Sizes.s12)),
      ),
      backgroundColor: AppColors.whiteColor,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(Sizes.s16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment:
                CrossAxisAlignment.start, // Pastikan elemen berada di kiri
            children: [
              Text(
                'Urutkan',
                style: Get.textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(height: Sizes.s10),
              Column(
                children: [
                  ListTile(
                    // leading: Icon(Icons.arrow_upward, color: AppColors.primaryColor),
                    title: Text(
                      "Nama (A-Z)",
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: Visibility(
                      visible: isAsc,
                      child: Icon(
                        Icons.check_circle,
                        color: AppColors.primaryColor,
                        size: Sizes.s20,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      onSelected(true); // Ascending
                    },
                  ),
                  Divider(
                      color: AppColors.lightGreyColor,
                      thickness: 1), // Garis pemisah
                  ListTile(
                    // leading: Icon(Icons.arrow_downward, color: AppColors.primaryColor),
                    title: Text(
                      "Nama (Z-A)",
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: Visibility(
                      visible: !isAsc,
                      child: Icon(
                        Icons.check_circle,
                        color: AppColors.primaryColor,
                        size: Sizes.s20,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      onSelected(false); // Descending
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
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
                            horizontal: Sizes.s10, vertical: Sizes.s8),
                        child: Row(
                          children: [
                            Image.network(
                              data.logo ?? '',
                              height: Sizes.s30,
                              width: Sizes.s30,
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
                        Get.toNamed(DetailUdaraOperatorPage.routeName,
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
                                    : (isSmallScreen ? Sizes.s10 : Sizes.s10)),
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
                                                    : (isSmallScreen ? 12 : 14),
                                              )),
                                          Text(data.contactPhone ?? '',
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(
                                                fontSize: isUnfolded
                                                    ? 14
                                                    : (isSmallScreen ? 12 : 14),
                                              )),
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
                                            AssetConstant.planeIcon,
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
                                                    : (isSmallScreen ? 12 : 14),
                                              )),
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
                                            width: Sizes.s14,
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
                                                    : (isSmallScreen ? 12 : 14),
                                              )),
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
