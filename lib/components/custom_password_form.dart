import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class CustomPasswordForm extends StatelessWidget {
  const CustomPasswordForm({
    super.key,
    required this.label,
    required this.hintText,
    this.textInputAction,
    this.controller,
    this.validator,
    this.isRequired = false,
    this.labelFontSize,
    this.hintFontSize,
  });

  final String label;
  final String hintText;
  final bool? isRequired;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final double? labelFontSize;
  final double? hintFontSize;

  @override
  Widget build(BuildContext context) {
    RxBool isShow = false.obs;
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  final isSmallScreen = screenHeight < 700 || screenWidth < 380;
  final isUnfolded = screenWidth > 600;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: Get.textTheme.bodyLarge!.copyWith(fontSize: isUnfolded ? 14 : labelFontSize,),
            children: [
              if (isRequired!)
                TextSpan(
                  text: " *",
                  style: Get.textTheme.bodyLarge!
                      .copyWith(color: Get.theme.colorScheme.tertiary,
                      fontSize: isUnfolded ? 14 : labelFontSize,),
                )
            ],
          ),
        ),
        SizedBox(height: isUnfolded ? Sizes.s8 : Sizes.s6),
        Obx(
          () => TextFormField(
            controller: controller,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: textInputAction,
            obscureText: !isShow.value,
            style: Get.textTheme.bodyLarge!.copyWith(
              fontSize: isUnfolded ? FontSizes.s14 : FontSizes.s12,
            ),
            decoration: InputDecoration(
              isDense: true,
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
              suffixIcon: GestureDetector(
                onTap: () {
                  isShow.value = !isShow.value;
                },
                child: Icon(
                  isShow.value
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: Get.theme.colorScheme.surface,
                  size: Sizes.s18,
                ),
              ),
            ),
            validator: validator,
          ),
        ),
      ],
    );
  }
}
