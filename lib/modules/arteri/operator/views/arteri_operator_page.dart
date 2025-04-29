import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/components/buttons/custom_outline_icon_button.dart';
import 'package:strategi_hub_app/components/forms/custom_search_field.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/dummy_data.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/arteri/operator/controllers/arteri_operator_controller.dart';
import 'package:strategi_hub_app/modules/jalan/operator/models/operator_model.dart';
import 'package:strategi_hub_app/modules/arteri/operator/views/detail_jalan_operator_page.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';

class ArteriOperatorPage extends StatelessWidget {
  const ArteriOperatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    final controller = Get.put(ArteriOperatorController());
    return Column(
      children: [
        // HeaderFilter(
        //   isRutin: controller.isRoutine,
        //   onSelectedDate: controller.updateFilterDate,
        //   rangeGroupvalue: controller.groupValue,
        //   selectedDateRange: controller.selectedDateRange,
        // ),
        Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(vertical: Sizes.s10),
          child: Row(
            children: [
              Expanded(
                child: CustomSearchField(
                  hintText: 'Cari',
                  controller: TextEditingController(),
                  label: "Username",
                  labelFontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 13),
                  hintFontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12),
                  maxLines: 1,
                  validator: (value) {},
                ),
              ),
              SizedBox(width: Sizes.s10),
              CustomOutlineIconButton(
                icon: IconlyLight.filter_2,
                color: AppColors.lightGreyColor,
                onTap: () {
                  _showFilterPopup(context, controller);
                },
              ),
            ],
          ),
        ),
        SizedBox(height: Sizes.s6),
        Expanded(
            child: GetBuilder<ArteriOperatorController>(builder: (controller) {
          return ListView.builder(
              itemCount: DummyData.listOperator.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return OperatorItem(
                  data: DummyData.listOperator[index],
                );
              });
        }))
      ],
    );
  }

  void _showFilterPopup(
      BuildContext context, ArteriOperatorController controller) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;
        final screenWidth = MediaQuery.of(context).size.width;
        final isSmallScreen = screenHeight < 700 || screenWidth < 380;
        final isUnfolded = screenWidth > 600;
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.s10),
          ),
          child: Container(
            padding: EdgeInsets.all(Sizes.s16),
            width: Get.width * 0.8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Urutkan',
                  style: Get.textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteColor,
                    fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 14),
                  ),
                ),
                SizedBox(height: Sizes.s10),
                _buildFilterOption(
                  context,
                  'Nama A-Z',
                  controller.sortOrder.value == 'asc',
                  () {
                    controller.sortOperators('asc');
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: Sizes.s8),
                _buildFilterOption(
                  context,
                  'Nama Z-A',
                  controller.sortOrder.value == 'desc',
                  () {
                    controller.sortOperators('desc');
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildFilterOption(
      BuildContext context, String title, bool isSelected, VoidCallback onTap,
      {bool isWhiteText = false}) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding:
            EdgeInsets.symmetric(vertical: Sizes.s8, horizontal: Sizes.s12),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primaryColor.withOpacity(0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(Sizes.s6),
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : AppColors.outlineColor,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize:
                      isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s14),
                  color: isWhiteText
                      ? AppColors.whiteColor
                      : (isSelected
                          ? AppColors.primaryColor
                          : AppColors.whiteColor),
                ),
              ),
            ),
            if (isSelected)
              Icon(
                Icons.check,
                color: AppColors.primaryColor,
                size: Sizes.s16,
              ),
          ],
        ),
      ),
    );
  }
}

class OperatorItem extends StatelessWidget {
  final OperatorModel data;
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
        child: ExpandableNotifier(child: ScrollOnExpand(
          child: Builder(builder: (context) {
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
                            Image.asset(
                              data.image ?? '',
                              height: isUnfolded
                                  ? Sizes.s15
                                  : (isSmallScreen ? Sizes.s15 : Sizes.s30),
                              width: isUnfolded
                                  ? Sizes.s15
                                  : (isSmallScreen ? Sizes.s15 : Sizes.s30),
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
                                        : (isSmallScreen ? 14 : FontSizes.s14)),
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
                        Get.toNamed(DetailJalanOperatorPage.routeName);
                      },
                      child: Container(
                        width: Get.width,
                        margin: EdgeInsets.fromLTRB(
                            Sizes.s10, Sizes.s0, Sizes.s10, Sizes.s10),
                        padding: EdgeInsets.symmetric(
                            vertical: Sizes.s6, horizontal: Sizes.s10),
                        decoration: BoxDecoration(
                          color: AppColors.infoContainerColor,
                          borderRadius: BorderRadius.circular(Sizes.s4),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: Sizes.s24),
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
                                            height: Sizes.s20,
                                            width: Sizes.s20,
                                          ),
                                          SizedBox(width: Sizes.s8),
                                          Flexible(
                                            child: Text(
                                              data.cs ?? '',
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(
                                                fontSize: isUnfolded
                                                    ? 14
                                                    : (isSmallScreen
                                                        ? 14
                                                        : FontSizes.s14),
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text('  |  ',
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded
                                                          ? 14
                                                          : (isSmallScreen
                                                              ? 14
                                                              : FontSizes
                                                                  .s14))),
                                          Text(data.phone ?? '',
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded
                                                          ? 14
                                                          : (isSmallScreen
                                                              ? 14
                                                              : FontSizes
                                                                  .s14))),
                                        ],
                                      ),
                                      SizedBox(height: Sizes.s6),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            AssetConstant.arteriIcon,
                                            color: AppColors.blackColor,
                                            height: Sizes.s20,
                                            width: Sizes.s20,
                                          ),
                                          SizedBox(width: Sizes.s8),
                                          Text(
                                              (data.transportCount ?? 0)
                                                  .toDotSeparated(),
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded
                                                          ? 14
                                                          : (isSmallScreen
                                                              ? 14
                                                              : FontSizes
                                                                  .s14))),
                                          SizedBox(width: Sizes.s60),
                                          SvgPicture.asset(
                                            AssetConstant.users,
                                            color: AppColors.blackColor,
                                            height: Sizes.s14,
                                            width: Sizes.s14,
                                          ),
                                          SizedBox(width: Sizes.s8),
                                          Text(
                                              (data.userCount ?? 0)
                                                  .toDotSeparated(),
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded
                                                          ? 14
                                                          : (isSmallScreen
                                                              ? 14
                                                              : FontSizes
                                                                  .s14))),
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
                                                'OTP ${data.otp ?? '0'} %',
                                                style: Get.textTheme.titleSmall!
                                                    .copyWith(
                                                        color: AppColors
                                                            .whiteColor,
                                                        fontSize: isUnfolded
                                                            ? 14
                                                            : (isSmallScreen
                                                                ? 14
                                                                : FontSizes
                                                                    .s14)),
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
                    )),
              ],
            );
          }),
        )));
  }
}
