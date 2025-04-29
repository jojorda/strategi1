import 'package:flutter/material.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';

import '../../constant/sizes_constant.dart';

class CustomOutlineIconButton extends StatelessWidget {
  final double? height;
  final double? width;
  final IconData icon;
  final Color? color;
  final Function() onTap;
  const CustomOutlineIconButton(
      {super.key,
      this.height,
      this.width,
      required this.icon,
      this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? (isUnfolded ? Sizes.s20 : (isSmallScreen ? Sizes.s20 : Sizes.s40)),
        width: width ?? (isUnfolded ? Sizes.s20 : (isSmallScreen ? Sizes.s20 : Sizes.s40)),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: color ?? AppColors.lightGreyColor),
            borderRadius: BorderRadius.circular(Sizes.s10)),
        child: Center(
          child: Icon(
            icon,
            color: color ?? AppColors.lightGreyColor,
          ),
        ),
      ),
    );
  }
}
