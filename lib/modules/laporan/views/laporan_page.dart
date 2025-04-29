import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/custom_tabbar.dart';
import 'package:strategi_hub_app/constant/constant.dart';
import 'package:strategi_hub_app/constant/enum/laporan_enum.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/laporan_controller.dart';
import 'package:strategi_hub_app/modules/laporan/views/kinerja_laporan_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/laporan_content.dart';
import 'package:strategi_hub_app/utils/extentions/enum_extentions.dart';

class LaporanPage extends GetView<LaporanController> {
  static const routeName = '/laporan-page';
  const LaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: Container(
            width: Get.width,
            height: Get.height,
            padding:
                EdgeInsets.fromLTRB(Sizes.s20, Sizes.s10, Sizes.s20, Sizes.s0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomTabBar(
                          controller: controller.tabController,
                          data: controller
                              .getMenuList()
                              .map((e) => e.formattedName)
                              .toList(),
                          onTap: (index) {
                            FocusManager.instance.primaryFocus?.unfocus();
                            controller.selectedIndex.value = index;
                            controller.title.value = Constant.tabLaporan[index];
                            controller.update();
                          },
                          selectedIndex: controller.selectedIndex.value),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     controller.onOpenAddLaporan();
                    //   },
                    //   child: Container(
                    //     height: Sizes.s40,
                    //     width: Sizes.s40,
                    //     margin: EdgeInsets.only(left: Sizes.s8),
                    //     decoration: BoxDecoration(
                    //         color: AppColors.infoColor,
                    //         borderRadius: BorderRadius.circular(Sizes.s10)),
                    //     child: Center(
                    //       child: Icon(
                    //         Icons.add,
                    //         color: AppColors.whiteColor,
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: controller.tabController,
                    children: controller.getMenuList().map((laporanEnum) {
                      switch (laporanEnum) {
                        case LaporanEnum.laporanData:
                          return LaporanContent(type: LaporanEnum.laporanData);
                        case LaporanEnum.laporan2Jam:
                          return LaporanContent(type: LaporanEnum.laporan2Jam);
                        case LaporanEnum.laporanShift:
                          return LaporanContent(type: LaporanEnum.laporanShift);
                        case LaporanEnum.laporanDaily:
                          return LaporanContent(type: LaporanEnum.laporanDaily);
                        case LaporanEnum.laporanWeekly:
                          return LaporanContent(
                              type: LaporanEnum.laporanWeekly);
                        case LaporanEnum.kinerjaPelaporan:
                          return KinerjaLaporanPage();
                        default:
                          return EmptyState();
                      }
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      alignment: Alignment.center,
      child: Text(
        'Belum ada data',
        style: Get.textTheme.labelLarge,
      ),
    );
  }
}
