import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    this.width,
    required this.onPress,
    required this.text,
    this.bgColor,
    this.textColor,
  });

  final double? width;
  final Function() onPress;
  final String text;
  final Color? bgColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
    return SizedBox(
      width: width ?? Get.width,
      child: OutlinedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
            width ?? Get.width,
           isUnfolded ? 28 : 36,
          ),
          padding: EdgeInsets.symmetric(
            vertical: isUnfolded ? 8 : 8, // padding dinamis
          ),
          backgroundColor: bgColor,
          side: BorderSide(
            color: textColor ?? AppColors.outlineColor,
          ),
        ),
        child: Text(
          text,
          style: Get.textTheme.bodyMedium!.copyWith(
            fontSize: isUnfolded ? FontSizes.s12 : (isSmallScreen ? FontSizes.s14 :FontSizes.s16),
            fontWeight: FontWeight.w600,
            color: textColor ?? Get.theme.colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
