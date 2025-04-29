import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/buttons/custom_outline_icon_button.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/modules/jalan/operator/controllers/jalan_operator_od_controller.dart';

class OriginDestinationPage extends StatefulWidget {
  static String routeName = '/origin-destination-page';
  const OriginDestinationPage({super.key});

  @override
  State<OriginDestinationPage> createState() => _OriginDestinationPageState();
}

class _OriginDestinationPageState extends State<OriginDestinationPage> {
  late JalanOperatorOdController controller;

  @override
  void initState() {
    controller = Get.put(JalanOperatorOdController(
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
      title: 'ORIGIN DESTINATION',
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
                        onChanged: (value) => controller.searchOd(value),
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
                  'Total Origin Destination ${controller.operatorOdData.value.length}',
                  style: Get.textTheme.bodyMedium!
                      .copyWith(fontWeight: FontWeight.w500, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                ),
                SizedBox(height: Sizes.s10),
                Expanded(
                  child: Stack(
                    children: [
                      Visibility(
                        visible: controller.isLoadingOperatorsOdData.value,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      Visibility(
                        visible:  !controller.isLoadingOperatorsOdData.value && controller.operatorOdData.value.isEmpty,
                        child: Center(
                          child: Text("Tidak ada data OD", style: Get.textTheme.bodyMedium!.copyWith(fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12))),
                        ),
                      ),
                      Visibility(
                        visible: !controller.isLoadingOperatorsOdData.value,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.operatorOdData.value.length,
                          itemBuilder: (context, index) {
                            bool isOdd = index.isOdd;
                            final data = controller.operatorOdData.value[index];

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
                                      style: Get.textTheme.labelLarge!.copyWith(
                                          fontWeight: FontWeight.w400, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data?.name ?? "",
                                          style: Get.textTheme.labelLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.w400, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12)),
                                        ),
                                        SizedBox(height: Sizes.s4),
                                        Text(
                                          '${data?.origin} -${data?.destination}',
                                          style: Get.textTheme.titleSmall!
                                              .copyWith(
                                                  fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s10),
                                                  color:
                                                      AppColors.darkGreyColor,
                                                  fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
