import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class CustomUploadFile extends StatelessWidget {
  final String label;
  final String icon;
  final VoidCallback? onTap;
  const CustomUploadFile(
      {super.key, required this.label, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Get.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: FontSizes.s11,
              color: AppColors.greyColor),
        ),
        SizedBox(height: Sizes.s6),
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(Sizes.s8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.s6),
                    border: Border.all(color: AppColors.infoColor)),
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  'Pilih File',
                  style: Get.textTheme.bodyMedium!.copyWith(
                      color: AppColors.infoColor, fontSize: FontSizes.s10),
                ),
              ),
              SizedBox(width: Sizes.s8),
              SvgPicture.asset(
                icon,
                color: AppColors.blackColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
