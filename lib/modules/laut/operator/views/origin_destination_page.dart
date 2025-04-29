import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/buttons/custom_outline_icon_button.dart';
import 'package:strategi_hub_app/components/forms/custom_search_field.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class OriginDestinationPage extends StatelessWidget {
  static String routeName = '/origin-destination-page';
  const OriginDestinationPage({super.key});

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
              'Total Origin Destination 8',
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
                              Text('JAKARTA 1',
                                  style: Get.textTheme.labelLarge!
                                      .copyWith(fontWeight: FontWeight.w400, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12))),
                              SizedBox(height: Sizes.s4),
                              Text(
                                  'Terminal Kp Rambutan - Terminal Pulo Gebang',
                                  style: Get.textTheme.titleSmall!.copyWith(
                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12),
                                      color: AppColors.darkGreyColor,
                                      fontWeight: FontWeight.w400))
                            ],
                          )),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
