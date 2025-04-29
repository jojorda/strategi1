import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:pagination_flutter/pagination.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/buttons/custom_outline_icon_button.dart';
import 'package:strategi_hub_app/components/forms/custom_search_field.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/perizinan_page.dart';

class LautSaranaPage extends StatelessWidget {
  static String routeName = '/laut-sarana-page';
  const LautSaranaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    RxInt page = 1.obs;
    return BaseScaffold(
      title: 'SARANA',
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          Sizes.s20,
          Sizes.s14,
          Sizes.s20,
          Sizes.s0,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomSearchField(
                      controller: TextEditingController(),
                      onSubmitted: (p0) {},
                      hintText: 'Cari',
                      label: "Username",
                        labelFontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 13),
                        hintFontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12),
                        maxLines: 1,
                        validator: (value) {},
                    ),
                  ),
                  SizedBox(width: Sizes.s10),
                  CustomOutlineIconButton(
                    icon: IconlyLight.filter_2,
                    color: AppColors.lightGreyColor,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: Sizes.s10),
              Text(
                'Total 46 Sarana',
                style: Get.textTheme.bodyMedium!
                    .copyWith(fontWeight: FontWeight.w500, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
              ),
              SizedBox(height: Sizes.s10),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      bool isOdd = index.isOdd;
                      return Container(
                        padding: EdgeInsets.symmetric(
                            vertical: Sizes.s6, horizontal: Sizes.s4),
                        color: isOdd
                            ? AppColors.primaryContainerColor
                            : AppColors.whiteColor,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Get.width * 0.09,
                              child: Text(
                                '${index + 1}.',
                                textAlign: TextAlign.start,
                                style: Get.textTheme.labelLarge!
                                    .copyWith(fontWeight: FontWeight.w400, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                              ),
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text('FERY 01',
                                          style: Get.textTheme.labelLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.w400, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12))),
                                    ),
                                    GestureDetector(
                                      onTap: () =>
                                          Get.toNamed(PerizinanPage.routeName),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(Sizes.s4),
                                            color: AppColors.chartColor),
                                        padding: EdgeInsets.symmetric(
                                            vertical: Sizes.s2,
                                            horizontal: Sizes.s6),
                                        child: Text(
                                          'Perizinan',
                                          style: Get.textTheme.labelMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.whiteColor,
                                                  fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: Sizes.s4),
                                Row(
                                  children: [
                                    Text('NOPOL 1323 | ',
                                        style: Get.textTheme.titleSmall!
                                            .copyWith(
                                                fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12),
                                                color: AppColors.darkGreyColor,
                                                fontWeight: FontWeight.w400)),
                                    SvgPicture.asset(
                                      AssetConstant.boatIcon,
                                      color: AppColors.darkGreyColor,
                                    ),
                                    Text(' Mercedes Benz | ',
                                        style: Get.textTheme.titleSmall!
                                            .copyWith(
                                                fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12),
                                                color: AppColors.darkGreyColor,
                                                fontWeight: FontWeight.w400)),
                                    SvgPicture.asset(
                                      AssetConstant.boatIcon,
                                      color: AppColors.darkGreyColor,
                                    ),
                                    Text(' Roda 6 | ',
                                        style: Get.textTheme.titleSmall!
                                            .copyWith(
                                                fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12),
                                                color: AppColors.darkGreyColor,
                                                fontWeight: FontWeight.w400)),
                                    SvgPicture.asset(
                                      AssetConstant.userGroup,
                                      color: AppColors.darkGreyColor,
                                    ),
                                    Text(' 68',
                                        style: Get.textTheme.titleSmall!
                                            .copyWith(
                                                fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12),
                                                color: AppColors.darkGreyColor,
                                                fontWeight: FontWeight.w400)),
                                  ],
                                )
                              ],
                            )),
                          ],
                        ),
                      );
                    }),
              ),
              Obx(() => Pagination(
                    numOfPages: 10,
                    selectedPage: page.value,
                    pagesVisible: 5,
                    onPageChanged: (index) {
                      page.value = index;
                    },
                    nextIcon: Icon(
                      Icons.chevron_right,
                      size: Sizes.s22,
                      color: AppColors.blackColor,
                    ),
                    previousIcon: Icon(
                      Icons.chevron_left,
                      size: Sizes.s22,
                      color: AppColors.blackColor,
                    ),
                    activeBtnStyle: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                        Size(Sizes.s22, Sizes.s22),
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      minimumSize:
                          MaterialStatePropertyAll(Size(Sizes.s22, Sizes.s22)),
                      backgroundColor: MaterialStateProperty.all(
                          Get.theme.colorScheme.primary),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    inactiveBtnStyle: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                        Size(Sizes.s22, Sizes.s22),
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      minimumSize:
                          MaterialStatePropertyAll(Size(Sizes.s22, Sizes.s22)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    activeTextStyle: Get.textTheme.bodySmall!
                        .copyWith(color: AppColors.whiteColor),
                    inactiveTextStyle: Get.textTheme.bodySmall!
                        .copyWith(color: Color(0xFF919191)),
                  )),
              SizedBox(height: Sizes.s20)
            ],
          ),
        ),
      ),
    );
  }
}
