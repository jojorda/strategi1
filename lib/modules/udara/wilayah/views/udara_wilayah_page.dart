import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pagination_flutter/pagination.dart';
import 'package:strategi_hub_app/components/forms/custom_search_field.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/modules/jalan/wilayah/views/detail_prov_page.dart';
import 'package:strategi_hub_app/modules/udara/controllers/udara_controller.dart';

class UdaraWilayahPage extends GetView<UdaraController> {
  const UdaraWilayahPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Stack(
      children: [
        RefreshIndicator(
          onRefresh: () async {
            controller.fetchData(true);
          },
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight + 50,
                  ),
                  child: Column(
                    children: [
                      CustomSearchField(
                        hintText: "Cari Provinsi..",
                        controller: controller.searchController,
                        onSubmitted: (value) {
                          controller.searchProvince();
                        },
                        label: "Username",
                        labelFontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 13),
                        hintFontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12),
                        maxLines: 1,
                        validator: (value) {},
                      ),
                      SizedBox(height: Sizes.s10),
                      Obx(() {
                        final itemsPerPage = 10;
                        final currentPage = controller.currentPage.value;
                        final startIndex = (currentPage - 1) * itemsPerPage;
                        final endIndex = startIndex + itemsPerPage;
                        final paginatedList =
                            controller.listFilteredProvince.value?.sublist(
                                  startIndex,
                                  endIndex >
                                          controller.listFilteredProvince.value!
                                              .length
                                      ? controller
                                          .listFilteredProvince.value!.length
                                      : endIndex,
                                ) ??
                                [];

                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final item = paginatedList[index];
                            return InkWell(
                              onTap: () => Get.toNamed(
                                DetailProvPage.routeName,
                                arguments: {
                                  'provinceData': item,
                                  'provinceId': item.id,
                                  'title': 'Udara',
                                  'moda': ModaType.udara
                                },
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "${startIndex + index + 1}.",
                                    style: Get.textTheme.labelLarge!.copyWith(
                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 14),
                                    ),
                                  ),
                                  SizedBox(width: Sizes.s8),
                                  Text(
                                    item.name.trim(),
                                    style: Get.textTheme.labelLarge!.copyWith(
                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 14),
                                    ),
                                    maxLines: 1,
                                  ),
                                  SizedBox(width: Sizes.s12),
                                  Spacer(),
                                  Container(
                                    height: Sizes.s20,
                                    width: Sizes.s20,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFF1F6FB),
                                    ),
                                    child: Icon(
                                      Icons.chevron_right,
                                      size: isUnfolded ? Sizes.s20 : (isSmallScreen ? Sizes.s18 : Sizes.s24)  ,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(height: Sizes.s16),
                          itemCount: paginatedList.length,
                        );
                      }),
                      SizedBox(height: Sizes.s24),
                      Obx(() {
                        return Pagination(
                          numOfPages: controller.totalPages.value,
                          selectedPage: controller.currentPage.value,
                          pagesVisible: 5,
                          onPageChanged: (index) {
                            controller.currentPage.value = index;
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
                              Size(isUnfolded ? Sizes.s12 : (isSmallScreen ? Sizes.s8 : Sizes.s22), isUnfolded ? Sizes.s12 : (isSmallScreen ? Sizes.s8 : Sizes.s22)),
                            ),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            minimumSize: MaterialStatePropertyAll(
                                Size(isUnfolded ? Sizes.s12 : (isSmallScreen ? Sizes.s8 : Sizes.s22), isUnfolded ? Sizes.s12 : (isSmallScreen ? Sizes.s8 : Sizes.s22))),
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
                              Size(isUnfolded ? Sizes.s12 : (isSmallScreen ? Sizes.s8 : Sizes.s22), isUnfolded ? Sizes.s12 : (isSmallScreen ? Sizes.s8 : Sizes.s22)),
                            ),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            minimumSize: MaterialStatePropertyAll(
                                Size(isUnfolded ? Sizes.s12 : (isSmallScreen ? Sizes.s8 : Sizes.s22), isUnfolded ? Sizes.s12 : (isSmallScreen ? Sizes.s8 : Sizes.s22))),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          activeTextStyle: Get.textTheme.bodySmall!
                              .copyWith(color: AppColors.whiteColor,fontSize: isUnfolded ? 12 : (isSmallScreen ? 10 : 12),),
                          inactiveTextStyle: Get.textTheme.bodySmall!
                              .copyWith(color: Color(0xFF919191),fontSize: isUnfolded ? 12 : (isSmallScreen ? 10 : 12),),
                        );
                      }),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Obx(() {
          return Positioned.fill(
            child: Visibility(
              visible: controller.isLoadingRegionalData.value,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () {},
                child: Container(
                  color: Colors.white.withAlpha(70),
                  child: BouncingLoader(),
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
