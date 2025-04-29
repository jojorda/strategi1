import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:pagination_flutter/pagination.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/buttons/custom_outline_icon_button.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/domain/entities/perizinan.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/modules/jalan/operator/controllers/jalan_operator_sarana_controller.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/perizinan_page.dart';

class SaranaPage extends StatefulWidget {
  static String routeName = '/sarana-page';
  const SaranaPage({super.key});

  @override
  State<SaranaPage> createState() => _SaranaPageState();
}

class _SaranaPageState extends State<SaranaPage> {
  late JalanOperatorSaranaController controller;

  @override
  void initState() {
    controller = Get.put(JalanOperatorSaranaController(
      Get.find<ModaRepository>(),
    ));
    controller.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
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
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        onChanged: (value) => controller.searchSarana(value),
                        style: Get.textTheme.labelLarge!.copyWith(
                          fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12),
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: Sizes.s0, horizontal: Sizes.s14),
                          hintText: 'Cari',
                          hintStyle: Get.textTheme.labelLarge!.copyWith(
                              fontSize: Sizes.s12,
                              color: AppColors.lightGreyColor),
                          prefixIcon: Icon(
                            IconlyLight.search,
                            size: Sizes.s18,
                            color: AppColors.lightGreyColor,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(Sizes.s8),
                            borderSide:
                                BorderSide(color: AppColors.outlineColor),
                          ),
                        ),
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
                  'Total ${controller.saranaTotalData.value} Sarana',
                  style: Get.textTheme.bodyMedium!
                      .copyWith(fontWeight: FontWeight.w500, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                ),
                SizedBox(height: Sizes.s10),
                Expanded(
                  child: Stack(
                    children: [
                      Visibility(
                        visible: controller.isLoadingOperatorsData.value,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      Visibility(
                        visible:  !controller.isLoadingOperatorsData.value && controller.saranaListData.value.isEmpty,
                        child: Center(
                          child: Text("Tidak ada data sarana", style: Get.textTheme.bodyMedium!.copyWith(fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12))),
                        ),
                      ),
                      Visibility(
                        visible: !controller.isLoadingOperatorsData.value,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: controller.saranaListData.value.length,
                            itemBuilder: (context, index) {
                              bool isOdd = index.isOdd;
                              final data =
                                  controller.saranaListData.value[index];

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
                                            .copyWith(
                                                fontWeight: FontWeight.w400, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                                      ),
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                data.name,
                                                style: Get.textTheme.labelLarge!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w400, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () => Get.toNamed(
                                                PerizinanPage.routeName,
                                                arguments:
                                                    PerizinanPageArugment(
                                                  operator:
                                                      controller.operator.value,
                                                  sarana: data,
                                                ),
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Sizes.s4),
                                                    color:
                                                        AppColors.chartColor),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: Sizes.s2,
                                                    horizontal: Sizes.s6),
                                                child: Text(
                                                  'Perizinan',
                                                  style: Get
                                                      .textTheme.labelMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: AppColors
                                                              .whiteColor, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: Sizes.s4),
                                        Row(
                                          children: [
                                            Text('NOPOL ${data.plateNumber} | ',
                                                style: Get.textTheme.titleSmall!
                                                    .copyWith(
                                                        fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s10),
                                                        color: AppColors
                                                            .darkGreyColor,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                            SvgPicture.asset(
                                              AssetConstant.miniBus,
                                              color: AppColors.darkGreyColor,
                                            ),
                                            Text(
                                              ' ${data.brand} | ',
                                              style: Get.textTheme.titleSmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s10),
                                                      color: AppColors
                                                          .darkGreyColor,
                                                      fontWeight:
                                                          FontWeight.w400),
                                            ),
                                            SvgPicture.asset(
                                              AssetConstant.miniBus,
                                              color: AppColors.darkGreyColor,
                                            ),
                                            Text(
                                              ' Roda ${data.wheelCount} | ',
                                              style: Get.textTheme.titleSmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s10),
                                                      color: AppColors
                                                          .darkGreyColor,
                                                      fontWeight:
                                                          FontWeight.w400),
                                            ),
                                            SvgPicture.asset(
                                              AssetConstant.userGroup,
                                              color: AppColors.darkGreyColor,
                                            ),
                                            Text(
                                              ' ${data.maxPassengerCount}',
                                              style: Get.textTheme.titleSmall!
                                                  .copyWith(
                                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s10),
                                                      color: AppColors
                                                          .darkGreyColor,
                                                      fontWeight:
                                                          FontWeight.w400),
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                Pagination(
                  numOfPages: controller.saranaTotalData.value,
                  selectedPage: controller.page.value,
                  pagesVisible: 5,
                  onPageChanged: (index) {
                    controller.page.value = index;
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
                ),
                SizedBox(height: Sizes.s20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
