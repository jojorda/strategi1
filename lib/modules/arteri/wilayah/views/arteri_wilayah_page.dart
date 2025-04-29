import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pagination_flutter/pagination.dart';
import 'package:strategi_hub_app/components/forms/custom_search_field.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/jalan/wilayah/controllers/jalan_wilayah_controller.dart';
import 'package:strategi_hub_app/modules/jalan/wilayah/views/detail_prov_page.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';

class ArteriWilayahPage extends StatelessWidget {
  const ArteriWilayahPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    
    final JalanWilayahController controller = Get.put(JalanWilayahController());
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderFilter(
            isRutin: controller.isRutin,
            onSelectedDate: controller.formatDateRanges,
            rangeGroupvalue: controller.groupValue,
            selectedDateRange: controller.selectedDateRange,
          ),
          SizedBox(height: Sizes.s12),
          CustomSearchField(
            hintText: "Cari Provinsi..",
            controller: TextEditingController(),
            label: "Username",
                        labelFontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 13),
                        hintFontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12),
                        maxLines: 1,
                        validator: (value) {},
          ),
          SizedBox(height: Sizes.s10),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text(
                    "${index + 1}.",
                    style: Get.textTheme.labelLarge,
                  ),
                  SizedBox(width: Sizes.s8),
                  Text(
                    "Nanggroe Aceh Darussalam",
                    style: Get.textTheme.labelLarge,
                    maxLines: 1,
                  ),
                  SizedBox(width: Sizes.s12),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Get.toNamed(DetailProvPage.routeName,
                        arguments: {'title': 'Arteri'}),
                    child: Container(
                      height: Sizes.s24,
                      width: Sizes.s24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF1F6FB),
                      ),
                      child: Icon(
                        Icons.chevron_right,
                        size: Sizes.s24,
                      ),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: Sizes.s16),
            itemCount: 10,
          ),
          SizedBox(height: Sizes.s24),
          Pagination(
            numOfPages: 10,
            selectedPage: 1,
            pagesVisible: 5,
            onPageChanged: (index) {},
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
              minimumSize: MaterialStatePropertyAll(Size(Sizes.s22, Sizes.s22)),
              backgroundColor:
                  MaterialStateProperty.all(Get.theme.colorScheme.primary),
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
              minimumSize: MaterialStatePropertyAll(Size(Sizes.s22, Sizes.s22)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            activeTextStyle:
                Get.textTheme.bodySmall!.copyWith(color: AppColors.whiteColor),
            inactiveTextStyle:
                Get.textTheme.bodySmall!.copyWith(color: Color(0xFF919191)),
          ),
        ],
      ),
    );
  }
}
