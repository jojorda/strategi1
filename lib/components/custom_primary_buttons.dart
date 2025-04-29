import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class CustomPrimaryButtons extends StatelessWidget {
  const CustomPrimaryButtons({
    super.key,
    this.width,
    required this.onPress,
    required this.text,
    this.bgColor,
    this.textColor,
    this.icon,
  });

  final double? width;
  final Function() onPress;
  final String text;
  final String? icon;
  final Color? bgColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
        final screenWidth = MediaQuery.of(context).size.width;
        final isSmallScreen = screenHeight < 700 || screenWidth < 380;
        final isUnfolded = screenWidth > 600;
    return SizedBox(
      width: width ?? Get.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Sizes.s5),
        child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            foregroundColor: textColor,
            minimumSize: Size(
              width ?? Get.width,
              isUnfolded ? 48 : 36, // tinggi dinamis
            ),
            padding: EdgeInsets.symmetric(
              vertical: isUnfolded ? 12 : 8, // padding dinamis
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Padding(
                  padding: EdgeInsets.only(right: isSmallScreen? Sizes.s3:Sizes.s8),
                  child: SvgPicture.asset(
                    icon ?? AssetConstant.boatIcon,
                    height: isUnfolded ? 16 : (isSmallScreen ? 14 : Sizes.s12),
                    color: textColor ?? Get.theme.colorScheme.onSurface,
                  ),
                ),
              Text(
                text,
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: isUnfolded ? 16 : (isSmallScreen ? 14 : Sizes.s12),
                  fontWeight: FontWeight.w600,
                  color: textColor ?? Get.theme.colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
