import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class ListCctv extends StatelessWidget {
  const ListCctv({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt selectedIndex = 0.obs;
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.s10),
          border: Border.all(color: AppColors.lightGreyColor)),
      padding: EdgeInsets.symmetric(horizontal: Sizes.s10),
      child: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.symmetric(vertical: Sizes.s10),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: Sizes.s10),
              child: GestureDetector(
                onTap: () {
                  selectedIndex.value = index;
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => Text(
                          '${(index + 1)}.',
                          style: Get.textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: selectedIndex.value == index
                                  ? AppColors.primaryColor
                                  : AppColors.blackColor),
                        )),
                    SizedBox(width: Sizes.s10),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Obx(() => Text(
                                      'Kualanamu - Tebing Tinggi KM 36+000',
                                      style: Get.textTheme.labelLarge!.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: selectedIndex.value == index
                                              ? AppColors.primaryColor
                                              : AppColors.blackColor),
                                    )),
                                SizedBox(height: Sizes.s4),
                                Text(
                                  'Kabupaten Deli Serdang',
                                  style: Get.textTheme.bodySmall!
                                      .copyWith(color: AppColors.darkGreyColor),
                                ),
                                SizedBox(height: Sizes.s2),
                                Text(
                                  'Provinsi Sumatera Utara',
                                  style: Get.textTheme.bodySmall!
                                      .copyWith(color: AppColors.darkGreyColor),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: Sizes.s6),
                          Obx(() => SvgPicture.asset(
                                AssetConstant.cctv,
                                color: selectedIndex.value == index
                                    ? AppColors.primaryColor
                                    : AppColors.blackColor,
                                height: Sizes.s18,
                                width: Sizes.s18,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
