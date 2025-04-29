import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String hintText;
  final String? label;
  final int? minLines;
  final int? maxLines;
  final IconData? icon;
  final bool? enable;
  final bool autofocus;
  final bool isForAppbar;
  final bool? isDarkMode;
  final Function()? onTap;

  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText = '',
    this.autofocus = false,
    this.isForAppbar = false,
    this.label,
    this.minLines,
    this.maxLines,
    this.icon,
    this.enable = true,
    this.isDarkMode = false,
    this.onTap,
    this.onChanged,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Padding(
            padding: EdgeInsets.only(bottom: Sizes.s4),
            child: Text(
              widget.label ?? '',
              style: Get.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: FontSizes.s11,
                  color: widget.isDarkMode == true
                      ? AppColors.whiteColor
                      : AppColors.greyColor),
            ),
          ),
        TextField(
          onTap: widget.onTap,
          enabled: widget.enable,
          controller: widget.controller,
          style: Get.textTheme.titleSmall!.copyWith(
              fontSize: FontSizes.s14,
              color: widget.isDarkMode == true ? AppColors.whiteColor : null),
          autofocus: widget.autofocus,
          onChanged: widget.onChanged,
          minLines: widget.minLines ?? 1,
          maxLines: widget.maxLines ?? 1,
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: widget.isDarkMode == true
                ? Color(0xFF0D1320)
                : AppColors.whiteColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.outlineColor,
              ),
              borderRadius: BorderRadius.circular(Sizes.s8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.outlineColor,
              ),
              borderRadius: BorderRadius.circular(Sizes.s8),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.outlineColor,
              ),
              borderRadius: BorderRadius.circular(Sizes.s8),
            ),
            hintText: widget.hintText,
            hintStyle: Get.textTheme.titleSmall!.copyWith(
                color: AppColors.outlineColor,
                fontWeight: FontWeight.w400,
                fontSize: FontSizes.s13),
            suffixIcon: widget.icon == null
                ? null
                : Icon(
                    widget.icon,
                    color: AppColors.lightGreyColor,
                    size: Sizes.s18,
                  ),
          ),
        ),
      ],
    );
  }
}
