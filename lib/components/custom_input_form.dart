import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class CustomInputForm extends StatelessWidget {
  const CustomInputForm({
    super.key,
    this.label,
    required this.hintText,
    this.keyboardType,
    this.textInputAction,
    this.controller,
    this.validator,
    this.enable,
    this.readOnly = false,
    this.onTap,
    this.maxLines,
    this.isRequired = false,
    this.labelFontSize,
    this.hintFontSize,
  });

  final String? label;
  final String hintText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? enable;
  final bool? isRequired;
  final bool? readOnly;
  final Function()? onTap;
  final int? maxLines;
  final double? labelFontSize;
  final double? hintFontSize;

  @override
  Widget build(BuildContext context) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  final isSmallScreen = screenHeight < 700 || screenWidth < 380;
  final isUnfolded = screenWidth > 600;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (label != null)
        RichText(
          text: TextSpan(
            text: label,
            style: Get.textTheme.bodyLarge!.copyWith(
              fontSize: isUnfolded ? 14 : labelFontSize,
            ),
            children: [
              if (isRequired!)
                TextSpan(
                  text: " *",
                  style: Get.textTheme.bodyLarge!.copyWith(
                    color: Get.theme.colorScheme.tertiary,
                    fontSize: isUnfolded ? 14 : labelFontSize,
                  ),
                )
            ],
          ),
        ),
      if (label != null) SizedBox(height: Sizes.s8),
      TextFormField(
        onTap: onTap,
        enabled: enable,
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        readOnly: readOnly!,
        style: Get.textTheme.bodyLarge!.copyWith(
          fontSize: isUnfolded ? FontSizes.s14 : FontSizes.s12,
        ),
        decoration: InputDecoration(
          isDense: true, // biar input field-nya lebih ramping
          contentPadding: EdgeInsets.symmetric(
            vertical: isUnfolded ? 10 : 10,
            horizontal: 8,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.s5),
            borderSide: BorderSide(color: AppColors.outlineColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.s5),
            borderSide: BorderSide(color: AppColors.outlineColor),
          ),
          hintText: hintText,
          hintStyle: Get.textTheme.bodyLarge!.copyWith(
            color: Get.theme.colorScheme.inverseSurface,
            fontSize: isUnfolded ? hintFontSize : hintFontSize! - 2,
          ),
        ),
        validator: validator,
      ),
    ],
  );
}

}
