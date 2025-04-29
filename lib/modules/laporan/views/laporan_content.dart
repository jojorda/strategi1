import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/components/forms/custom_search_field.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/enum/laporan_enum.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/laporan_controller.dart';

class LaporanContent extends GetView<LaporanController> {
  final LaporanEnum? type;
  const LaporanContent({super.key, this.type});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final data = switch (type) {
          null => controller.listFilteredReportData,
          LaporanEnum.laporanDaily => controller.listFilteredDailyPITData,
          LaporanEnum.laporanWeekly => controller.listFilteredWeeklyPITData,
          LaporanEnum.laporanShift => controller.listFilteredShiftData,
          LaporanEnum.laporan2Jam => controller.listFilteredTwoHoursData,
          _ => controller.listFilteredReportData,
        };

        final initialData = switch (type) {
          null => controller.listReportData,
          LaporanEnum.laporanDaily => controller.listDailyPITData,
          LaporanEnum.laporanWeekly => controller.listWeeklyPITData,
          LaporanEnum.laporanShift => controller.listShiftData,
          LaporanEnum.laporan2Jam => controller.listTwoHoursData,
          _ => controller.listReportData,
        };

        // First check if data is loading
        final bool isLoading = switch (type) {
          null => controller.isLoadingReportData.value,
          LaporanEnum.laporanDaily => controller.isLoadingDailyPITData.value,
          LaporanEnum.laporanWeekly => controller.isLoadingWeeklyPITData.value,
          LaporanEnum.laporanShift => controller.isLoadingShiftData.value,
          LaporanEnum.laporan2Jam => controller.isLoadingTwoHoursData.value,
          _ => controller.isLoadingReportData.value,
        };

        final searchController = switch (type) {
          null => controller.searchController,
          LaporanEnum.laporanDaily => controller.dailySearchController,
          LaporanEnum.laporanWeekly => controller.weeklySearchController,
          LaporanEnum.laporanShift => controller.shiftSearchController,
          LaporanEnum.laporan2Jam => controller.twoHoursSearchController,
          _ => controller.searchController,
        };

        // Check if data is empty
        final bool isEmpty = data.value == null || data.value!.isEmpty;

        if (isLoading) {
          return Center(child: BouncingLoader());
        }

        final screenHeight = MediaQuery.of(context).size.height;
        final screenWidth = MediaQuery.of(context).size.width;
        final isSmallScreen = screenHeight < 700 || screenWidth < 380;
        final isUnfolded = screenWidth > 600;

        // We'll include the search bar always, and conditionally render the empty state or list
        return RefreshIndicator(
          onRefresh: () async {
            controller.fetchData(true);
          },
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                // Search bar section
                Container(
                  width: Get.width,
                  padding: EdgeInsets.symmetric(vertical: Sizes.s10),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomSearchField(
                          controller: searchController,
                          onSubmitted: (p0) {
                            final filteredData = controller.filterData(
                                initialData.value ?? [], p0);
                            data.value = filteredData;
                          },
                          hintText: 'Cari',
                          label: "Username",
                        labelFontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 13),
                        hintFontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12),
                        maxLines: 1,
                        validator: (value) {},
                        ),
                      ),
                      // SizedBox(width: Sizes.s10),
                      // CustomOutlineIconButton(
                      //   icon: IconlyLight.filter_2,
                      //   color: AppColors.lightGreyColor,
                      //   onTap: () {},
                      // ),
                      // SizedBox(width: Sizes.s10),
                      // CustomOutlineIconButton(
                      //   icon: IconlyLight.calendar,
                      //   color: AppColors.lightGreyColor,
                      //   onTap: () {},
                      // ),
                    ],
                  ),
                ),

                // Conditional: Empty state or list view
                if (isEmpty)
                  Container(
                    width: Get.width,
                    height: Get.height * 0.5,
                    alignment: Alignment.center,
                    child: Text(
                      searchController.text.isEmpty
                          ? 'Belum ada data'
                          : 'dengan kata kunci "${searchController.text}" tidak ditemukan',
                      style: Get.textTheme.labelLarge,
                    ),
                  )
                else
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data.value!.length,
                    itemBuilder: (context, index) {
                      final item = data.value![index];
                      return GestureDetector(
                        onTap: () {
                          // Todo add navigation to detail page
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: Sizes.s10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: isUnfolded ? 12 : 0),
                                child:
                                Text('${(index + 1)}.', style: Get.textTheme.labelLarge!.copyWith(fontSize: isUnfolded ? 18 : (isSmallScreen ? 14:14)),),
                              ),
                              SizedBox(width: Sizes.s10),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                           Container(
                                            // width: 160,
                                            padding: EdgeInsets.only(top: isUnfolded ? 12 : 0),
                                            child:
                                            Text(
                                              item.namaData ?? '',
                                              style: Get.textTheme.labelLarge!.copyWith(fontSize: isUnfolded ? 18 : (isSmallScreen ? 14:14))
                                            ),
                                          ),
                                          // SizedBox(height: Sizes.s2),
                                          // Text(
                                          //   '${item.event ?? ''} | ${DateFormat('dd MMM yyyy HH:mm').tryFormat(item.createdAt?.toLocal())} WIB',
                                          //   style: Get.textTheme.bodySmall!
                                          //       .copyWith(
                                          //           color: AppColors
                                          //               .darkGreyColor),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: Sizes.s6),
                                    GestureDetector(
                                      onTap: () {
                                        controller.downloadFile(
                                          item.url,
                                          item.namaData,
                                          type: type ?? LaporanEnum.laporanData,
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: AppColors.lightInfoColor,
                                            borderRadius: BorderRadius.circular(
                                                Sizes.s50)),
                                        padding: EdgeInsets.all(Sizes.s8),
                                        child: Icon(
                                          IconlyLight.download,
                                          size: isUnfolded ? Sizes.s12 : Sizes.s18,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
