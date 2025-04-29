import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/custom_primary_buttons.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/home/views/home_page.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/origin_destination_page.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/sarana_page.dart';

class DetailTolOperatorPage extends StatelessWidget {
  static String routeName = '/detail-tol-operator-page';
  const DetailTolOperatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'DETAIL OPERATOR',
      body: Padding(
        padding: EdgeInsets.fromLTRB(Sizes.s20, Sizes.s10, Sizes.s20, Sizes.s0),
        child: SingleChildScrollView(
          child: Column(
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
                        child: Image.asset(
                          'assets/images/rosalia.png',
                        ),
                      ),
                    ),
                    SizedBox(width: Sizes.s10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ANDREA JUJITSU',
                            style: Get.textTheme.labelLarge!
                                .copyWith(fontWeight: FontWeight.bold),
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
                                '+82 434324322',
                                style: Get.textTheme.titleSmall,
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
                                'Jl. Gatot Subroto',
                                style: Get.textTheme.titleSmall,
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
                                'andrea@rossaliaindah.com',
                                style: Get.textTheme.titleSmall,
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
                      style: Get.textTheme.labelLarge,
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
                        'OTP 45 %',
                        style: Get.textTheme.titleMedium!
                            .copyWith(color: AppColors.whiteColor),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: Sizes.s10),
              Text(
                'Dokumen Perizinan',
                style: Get.textTheme.labelLarge,
              ),
              SizedBox(height: Sizes.s10),
              DokumenPerizinanTable(),
              SizedBox(height: Sizes.s10),
              Row(
                children: [
                  Expanded(
                      child: CustomPrimaryButtons(
                          icon: AssetConstant.miniBus,
                          onPress: () {
                            Get.toNamed(SaranaPage.routeName);
                          },
                          text: '46 Sarana')),
                  SizedBox(width: Sizes.s10),
                  Expanded(
                      child: CustomPrimaryButtons(
                          icon: AssetConstant.pinMap,
                          onPress: () {
                            Get.toNamed(OriginDestinationPage.routeName);
                          },
                          text: '8 OD')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DokumenPerizinanTable extends StatelessWidget {
  const DokumenPerizinanTable({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData('Merak Kp. Rambutan', 700, 15),
      SalesData('Sumberanyar Bungurasih', 800, 25),
      SalesData('Rajabasa Merak', 900, 35),
    ];

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
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  child: Text('Nama Dokumen',
                      style: Get.textTheme.titleSmall!
                          .copyWith(fontWeight: FontWeight.bold))),
              SizedBox(width: Sizes.s4),
              SizedBox(
                  width: Get.width * 0.2,
                  child: Text('Jenis File',
                      style: Get.textTheme.titleSmall!
                          .copyWith(fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: chartData.length,
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
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),
                    Expanded(
                        child: Text(chartData[index].month,
                            style: Get.textTheme.labelMedium!
                                .copyWith(fontWeight: FontWeight.w400))),
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
