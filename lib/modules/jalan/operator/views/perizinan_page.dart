import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/custom_primary_buttons.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/jalan/operator/controllers/jalan_operator_perizinan_controller.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/detail_jalan_operator_page.dart';

class PerizinanPage extends StatefulWidget {
  static String routeName = '/perizinan-page';
  const PerizinanPage({super.key});

  @override
  State<PerizinanPage> createState() => _PerizinanPageState();
}

class _PerizinanPageState extends State<PerizinanPage> {
  late JalanOperatorPerizinanController controller;

  @override
  void initState() {
    controller = Get.put(JalanOperatorPerizinanController());
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
      title: 'PERIZINAN',
      body: Padding(
        padding: EdgeInsets.fromLTRB(Sizes.s20, Sizes.s10, Sizes.s20, Sizes.s0),
        child: SingleChildScrollView(
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(Sizes.s14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sizes.s4),
                      color: AppColors.outlineColor),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(Sizes.s6),
                        child: Container(
                          width: Get.width * 0.3,
                          height: Sizes.s100,
                          color: AppColors.whiteColor,
                          child: Image.network(
                            controller.operator.value?.logo ?? "",
                            errorBuilder: (context, error, stackTrace) =>
                                Center(
                              child: Text(
                                'no image',
                                style: Get.textTheme.bodyMedium!.copyWith(color: Colors.grey, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                              ),
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: Sizes.s10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.sarana.value?.name ?? "",
                              style: Get.textTheme.labelLarge!
                                  .copyWith(fontWeight: FontWeight.bold, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                            ),
                            SizedBox(height: Sizes.s6),
                            Text(
                              "NOPOL ${controller.sarana.value?.plateNumber}",
                              style: Get.textTheme.titleSmall!.copyWith(fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                            ),
                            SizedBox(height: Sizes.s6),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AssetConstant.miniBus,
                                  color: AppColors.blackColor,
                                ),
                                SizedBox(width: Sizes.s5),
                                Text(
                                  controller.sarana.value?.brand ?? "",
                                  style: Get.textTheme.titleSmall!.copyWith(fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AssetConstant.miniBus,
                                  color: AppColors.blackColor,
                                ),
                                SizedBox(width: Sizes.s5),
                                Text(
                                  'Roda ${controller.sarana.value?.wheelCount}',
                                  style: Get.textTheme.titleSmall!.copyWith(fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AssetConstant.userGroup,
                                  color: AppColors.blackColor,
                                ),
                                SizedBox(width: Sizes.s5),
                                Text(
                                  controller.sarana.value?.maxPassengerCount
                                          .toString() ??
                                      "",
                                  style: Get.textTheme.titleSmall!.copyWith(fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: Sizes.s14),
                Text(
                  'Dokumen Perizinan',
                  style: Get.textTheme.labelLarge!.copyWith(fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                ),
                SizedBox(height: Sizes.s10),
                DokumenPerizinanTable(
                  documents: controller.sarana.value?.documents ?? [],
                ),
                SizedBox(height: Sizes.s10),
                CustomPrimaryButtons(
                    icon: AssetConstant.pinMap,
                    onPress: () {},
                    text: 'Kp Rambutan - Pulo Gebang')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
