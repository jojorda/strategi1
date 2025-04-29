import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class BottomSheetHelpers {
  static void showCustomBottomSheet({
    required Widget child,
    double? elevation,
    bool persistent = true,
    ShapeBorder? shape,
    Color? barrierColor,
    Color? backgroundColor,
    bool? ignoreSafeArea,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    Function()? whenComplete,
  }) {
    Get.bottomSheet(
      Container(
        constraints: BoxConstraints(maxHeight: Get.height - Sizes.s80),
        padding: EdgeInsets.only(top: Sizes.s16),
        width: Get.width,
        decoration: BoxDecoration(
          color: backgroundColor ?? Get.theme.colorScheme.background,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: Sizes.s16),
                width: Sizes.s52,
                height: Sizes.s5,
                decoration: BoxDecoration(
                  color: Get.theme.colorScheme.outline,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              Flexible(child: SingleChildScrollView(child: child)),
            ],
          ),
        ),
      ),
      elevation: elevation,
      persistent: persistent,
      shape: shape,
      barrierColor: barrierColor,
      ignoreSafeArea: ignoreSafeArea,
      isScrollControlled: isScrollControlled,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
    ).whenComplete(whenComplete ?? () {});
  }
}
