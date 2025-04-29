import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/modules/laporan/components/custom_dropdown_search.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/komparasi/controllers/komparasi_controller.dart';

class AddKomparasi extends GetView<KomparasiController> {
  const AddKomparasi({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.s4),
        border: Border.all(color: AppColors.outlineColor),
      ),
      child: ExpandablePanel(
        controller: controller.expandableController,
        theme: const ExpandableThemeData(
          headerAlignment: ExpandablePanelHeaderAlignment.center,
          tapBodyToExpand: false,
          tapBodyToCollapse: false,
          useInkWell: false,
          animationDuration: Duration(milliseconds: 500),
          hasIcon: false,
        ),
        header: Container(
          decoration: BoxDecoration(color: Colors.transparent),
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Sizes.s10, vertical: Sizes.s8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Tambah Fokus Matra',
                    textAlign: TextAlign.start,
                    style: Get.textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: isUnfolded
                            ? 14
                            : (isSmallScreen ? 14 : FontSizes.s14)),
                  ),
                ),
                Obx(
                  () => ExpandableIcon(
                    theme: ExpandableThemeData(
                      expandIcon: Icons.add_circle,
                      collapseIcon: Icons.keyboard_arrow_up_rounded,
                      iconColor: controller.isExpand.value
                          ? AppColors.greyColor
                          : AppColors.secondaryColor,
                      iconSize: isUnfolded
                          ? Sizes.s20
                          : (isSmallScreen ? Sizes.s18 : Sizes.s24),
                      iconRotationAngle: 2,
                      iconPadding: EdgeInsets.zero,
                      hasIcon: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        collapsed: const SizedBox(),
        expanded: Container(
          padding:
              EdgeInsets.fromLTRB(Sizes.s10, Sizes.s10, Sizes.s10, Sizes.s10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(() {
                return CustomDropdownSearch(
                  label: 'Pilih Matra',
                  items: controller.matraOptions,
                  selectedItem: controller.addMatra.value.isEmpty
                      ? null
                      : controller.addMatra.value,
                  onChanged: (val) {
                    controller.addMatra.value = val ?? '';
                  },
                );
              }),
              SizedBox(height: Sizes.s16),
              Obx(() {
                return CustomDropdownSearch(
                  label: 'Pilih Simpul',
                  selectedItem: controller.addSimpul.value.isEmpty
                      ? null
                      : controller.addSimpul.value,
                  items: controller.listSimpul.value
                      .map((e) => e.nama ?? '')
                      .toList(),
                  onChanged: (val) {
                    controller.addSimpul.value = val ?? '';
                  },
                );
              }),
              Container(
                alignment: Alignment.centerRight,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.onAddFokus(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 13,
                      vertical: 3,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Tambah', style: TextStyle(fontSize: 14)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
