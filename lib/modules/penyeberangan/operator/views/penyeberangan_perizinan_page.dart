import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/custom_primary_buttons.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/detail_jalan_operator_page.dart';

class PenyeberanganPerizinanPage extends StatelessWidget {
  static String routeName = '/penyeberangan-perizinan-page';
  const PenyeberanganPerizinanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'PERIZINAN',
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
              SizedBox(height: Sizes.s14),
              Text(
                'Dokumen Perizinan',
                style: Get.textTheme.labelLarge,
              ),
              SizedBox(height: Sizes.s10),
              DokumenPerizinanTable(),
              SizedBox(height: Sizes.s10),
              CustomPrimaryButtons(
                  icon: AssetConstant.pinMap,
                  onPress: () {},
                  text: 'Kp Rambutan - Pulo Gebang')
            ],
          ),
        ),
      ),
    );
  }
}
