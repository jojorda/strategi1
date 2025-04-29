import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/custom_primary_buttons.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/domain/entities/perizinan.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/modules/jalan/operator/controllers/jalan_operator_detail_controller.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/origin_destination_page.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/sarana_page.dart';

class DetailJalanOperatorPage extends StatefulWidget {
  static String routeName = '/detail-jalan-operator-page';
  const DetailJalanOperatorPage({super.key});

  @override
  State<DetailJalanOperatorPage> createState() =>
      _DetailJalanOperatorPageState();
}

class _DetailJalanOperatorPageState extends State<DetailJalanOperatorPage> {
  late JalanOperatorDetailController controller;

  @override
  void initState() {
    controller = Get.put(JalanOperatorDetailController(
      Get.find<ModaRepository>(),
    ));
    controller.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
    return BaseScaffold(
      title: 'DETAIL OPERATOR',
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
                            controller.operatorData.value?.logo ?? "",
                            errorBuilder: (context, error, stackTrace) =>
                                Center(
                              child: Text(
                                'no image',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14),
                                ),
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
                              controller.operatorData.value?.name ?? "",
                              style: Get.textTheme.labelLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                            ),
                            SizedBox(height: Sizes.s6),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: Sizes.s18,
                                ),
                                SizedBox(width: Sizes.s5),
                                Text(
                                  controller.operatorData.value?.contactPhone ??
                                      "",
                                  style: Get.textTheme.titleSmall!.copyWith(
                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AssetConstant.pinMap,
                                  height: Sizes.s18,
                                  color: AppColors.blackColor,
                                ),
                                SizedBox(width: Sizes.s5),
                                Text(
                                  controller.operatorData.value
                                          ?.contactLocation ??
                                      "",
                                  style: Get.textTheme.titleSmall!.copyWith(
                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  size: Sizes.s18,
                                ),
                                SizedBox(width: Sizes.s5),
                                Text(
                                  controller.operatorData.value?.contactEmail ??
                                      "",
                                  style: Get.textTheme.titleSmall!.copyWith(
                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: Sizes.s10),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Rata - Rata OTP',
                        style: Get.textTheme.labelLarge!.copyWith(
                            fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.s6),
                          color: AppColors.redOtpColor),
                      padding: EdgeInsets.symmetric(
                          vertical: Sizes.s4, horizontal: Sizes.s12),
                      child: Center(
                        child: Text(
                          'OTP ${controller.operatorData.value?.otpRate} %',
                          style: Get.textTheme.titleMedium!
                              .copyWith(color: AppColors.whiteColor,
                                  fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: Sizes.s10),
                Text(
                  'Dokumen Perizinan',
                  style: Get.textTheme.labelLarge!.copyWith(
                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                ),
                SizedBox(height: Sizes.s10),
                DokumenPerizinanTable(
                  documents: controller.operatorData.value?.documents ?? [],
                ),
                SizedBox(height: Sizes.s10),
                Row(
                  children: [
                    Expanded(
                      child: CustomPrimaryButtons(
                          icon: AssetConstant.miniBus,
                          onPress: () {
                            Get.toNamed(
                              SaranaPage.routeName,
                              arguments: controller.operatorData.value,
                            );
                          },
                          text:
                              '${controller.operatorData.value?.fleetSize} Sarana'),
                    ),
                    SizedBox(width: Sizes.s10),
                    Expanded(
                      child: CustomPrimaryButtons(
                          icon: AssetConstant.pinMap,
                          onPress: () {
                            Get.toNamed(
                              OriginDestinationPage.routeName,
                              arguments:
                                  controller.operatorData.value?.id ?? "",
                            );
                          },
                          text: '${controller.operatorOdDataCount.value} OD'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DokumenPerizinanTable extends StatelessWidget {
  final List<Perizinan> documents;

  const DokumenPerizinanTable({
    super.key,
    this.documents = const [],
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: Sizes.s8),
          color: AppColors.primaryContainerColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width * 0.09,
                child: Text(
                  'No',
                  textAlign: TextAlign.center,
                  style: Get.textTheme.titleSmall!
                      .copyWith(fontWeight: FontWeight.bold,
                          fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                ),
              ),
              Expanded(
                  child: Text('Nama Dokumen',
                      style: Get.textTheme.titleSmall!
                          .copyWith(fontWeight: FontWeight.bold,
                              fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14))),
              ),
              SizedBox(width: Sizes.s4),
              SizedBox(
                  width: Get.width * 0.2,
                  child: Text('Jenis File',
                      style: Get.textTheme.titleSmall!
                          .copyWith(fontWeight: FontWeight.bold,
                              fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14))),
              ),
            ],
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: documents.length,
            itemBuilder: (context, index) {
              bool isOdd = index.isOdd;
              return Container(
                padding: EdgeInsets.symmetric(vertical: Sizes.s6),
                color: isOdd
                    ? AppColors.primaryContainerColor
                    : AppColors.whiteColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width * 0.09,
                      child: Text(
                        (index + 1).toString(),
                        textAlign: TextAlign.center,
                        style: Get.textTheme.labelMedium!
                            .copyWith(fontWeight: FontWeight.w400,
                                fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        documents[index].name ?? "",
                        style: Get.textTheme.labelMedium!
                            .copyWith(fontWeight: FontWeight.w400,
                                fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                      ),
                    ),
                    SizedBox(width: Sizes.s8),
                    SizedBox(
                      width: Get.width * 0.25,
                      child: Image.asset(
                        AssetConstant.pdf,
                        height: Sizes.s20,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }
}
