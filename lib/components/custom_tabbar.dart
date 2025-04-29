import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class CustomTabBar extends StatelessWidget {
  final TabController? controller;
  final List<String> data;
  final int selectedIndex;
  final Function(int) onTap;

  /// badge length should be the same as data length
  final List<int>? badge;

  const CustomTabBar({
    super.key,
    this.controller,
    required this.data,
    required this.onTap,
    required this.selectedIndex,
    this.badge,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return ClipRRect(
      borderRadius: BorderRadius.circular(Sizes.s10),
      child: Container(
        height: isUnfolded ? Sizes.s30 : (isSmallScreen ? Sizes.s30 : Sizes.s40),
        decoration: BoxDecoration(
            color: AppColors.primaryContainerColor,
            borderRadius: BorderRadius.circular(Sizes.s10)),
        child: TabBar(
          controller: controller,
          onTap: onTap,
          labelPadding: EdgeInsets.zero,
          isScrollable: true,
          unselectedLabelColor: Get.theme.colorScheme.inverseSurface,
          unselectedLabelStyle: Get.textTheme.labelLarge,
          labelColor: AppColors.whiteColor,
          labelStyle: Get.textTheme.bodyMedium,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.s10),
          ),
          dividerHeight: Sizes.s0,
          overlayColor: const WidgetStatePropertyAll(Colors.transparent),
          tabAlignment: TabAlignment.start,
          tabs: data.map(
            (e) {
              bool isLabelVisible = false;
              String labelText = '0';
              final int index = data.indexOf(e);

              if (badge != null) {
                if (badge![index].isGreaterThan(0)) {
                  isLabelVisible = true;
                  labelText = badge![index].toString();
                }
              }

              return Tab(
                child: Badge(
                  label: Text(
                    labelText,
                    style: Get.textTheme.titleSmall!.copyWith(
                      color: AppColors.whiteColor,
                      fontSize: isUnfolded ? 16 : (isSmallScreen ? 14 : FontSizes.s14),
                    ),
                  ),
                  offset: const Offset(-7, 0),
                  isLabelVisible: isLabelVisible,
                  child: Container(
                    margin: EdgeInsets.only(
                        right: e == data.last ? Sizes.s0 : Sizes.s4),
                    padding: EdgeInsets.symmetric(horizontal: Sizes.s6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sizes.s6),
                      color: selectedIndex == data.indexOf(e)
                          ? Get.theme.colorScheme.primary
                          : AppColors.primaryContainerColor,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      e,
                      style: GoogleFonts.ibmPlexSans(
                        fontSize: isUnfolded ? 16 : (isSmallScreen ? 14 : FontSizes.s14),
                        fontWeight: selectedIndex == data.indexOf(e)
                            ? FontWeight.w600
                            : FontWeight.w400,
                        color: selectedIndex == data.indexOf(e)
                            ? AppColors.whiteColor
                            : AppColors.darkGreyColor,
                      ),
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
