import 'package:easy_radio/easy_radio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class CustomRadioButton extends StatelessWidget {
  final int value;
  final int groupValue;
  final Function(int?) onChanged;
  final String title;
  const CustomRadioButton({
    super.key,
    required this.groupValue,
    required this.onChanged,
    required this.value,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
    return GestureDetector(
      onTap: () {
        onChanged(value);
      },
      child: Row(
        children: [
          EasyRadio<int>(
              value: value,
              radius: isUnfolded ? Sizes.s6 : (isSmallScreen ? Sizes.s4 : Sizes.s6),
              dotRadius: isUnfolded ? Sizes.s3 : (isSmallScreen ? Sizes.s2 : Sizes.s3),
              inactiveBorderColor: AppColors.lightGreyColor,
              groupValue: groupValue,
              onChanged: onChanged),
          SizedBox(width: isUnfolded ? Sizes.s4 : (isSmallScreen ? Sizes.s2 : Sizes.s2)),
          Text(
            title,
            style: Get.textTheme.labelMedium!.copyWith(fontSize: isUnfolded? 12: (isSmallScreen ? 10 : 9)),
          ),
        ],
      ),
    );
  }
}
