import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class CustomSearchField1 extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onSubmitted;
  final Function() onTapClose;
  final String hintText;
  final bool autofocus;
  final bool isForAppbar;

  const CustomSearchField1({
    super.key,
    required this.controller,
    required this.onSubmitted,
    required this.onTapClose,
    this.hintText = 'Cari di sini..',
    this.autofocus = true,
    this.isForAppbar = false,
  });

  @override
  State<CustomSearchField1> createState() => _CustomSearchField1State();
}

class _CustomSearchField1State extends State<CustomSearchField1> {
  Timer? _debounce;
  RxString tempString = ''.obs;

  @override
  void initState() {
    debounce(
      tempString,
      (callback) => widget.onSubmitted(callback),
      time: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      style: Get.textTheme.titleSmall!.copyWith(fontSize: FontSizes.s14),
      autofocus: widget.autofocus,
      onChanged: (val) => setState(() => tempString.value = val),
      onSubmitted: (val) => setState(() => widget.onSubmitted(val)),
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: AppColors.whiteColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.lightGreyColor,
          ),
          borderRadius: BorderRadius.circular(Sizes.s12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.lightGreyColor,
          ),
          borderRadius: BorderRadius.circular(Sizes.s12),
        ),
        hintText: widget.hintText,
        hintStyle: Get.textTheme.titleSmall!.copyWith(
            color: AppColors.lightGreyColor,
            fontWeight: FontWeight.w400,
            fontSize: FontSizes.s13),
        prefixIcon: Icon(
          IconlyLight.search,
          color: AppColors.lightGreyColor,
          size: Sizes.s18,
        ),
        suffixIcon: (widget.controller.text.isNotEmpty || widget.isForAppbar)
            ? InkWell(
                onTap: () {
                  widget.onTapClose();
                  setState(() {
                    widget.controller.clear();
                  });
                },
                splashFactory: NoSplash.splashFactory,
                child: Icon(
                  Icons.close,
                  color: AppColors.lightGreyColor,
                ),
              )
            : null,
      ),
    );
  }
}