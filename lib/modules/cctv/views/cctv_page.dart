import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/components/forms/custom_dropdown.dart';
import 'package:strategi_hub_app/components/forms/custom_dropdown_search.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/domain/entities/cctv_data.dart';
import 'package:strategi_hub_app/modules/cctv/controllers/cctv_controller.dart';
import 'package:strategi_hub_app/modules/cctv/views/cctv_player.dart';

class CctvPage extends GetView<CctvController> {
  const CctvPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
    return SingleChildScrollView(
      child: Column(
        children: [
          Obx(() {
            return CustomDropdown(
              data: controller.listMatra.value,
              hint: 'Matra',
              onChanged: (val) {
                controller.searchMatra.value = val ?? '';
              },
              value: controller.searchMatra.value.isEmpty
                  ? null
                  : controller.searchMatra.value,
              onSaved: (val) {},
              onClearSelected: () {
                controller.searchMatra.value = '';
              },
              style: TextStyle(fontSize: isUnfolded ? 12 : 14),
            );
          }),
          SizedBox(height: Sizes.s10),
          Obx(() {
            return CustomDropdownSearch(
              label: 'Provinsi',
              items: controller.listLokasi.value.take(10).toList(),
              selectedItem: controller.searchLokasi.value.isEmpty
                  ? null
                  : controller.searchLokasi.value,
              onChanged: (val) {
                controller.searchLokasi.value = val ?? '';
              },
              onClearSelected: () {
                controller.searchLokasi.value = '';
              },
              style: TextStyle(fontSize: isUnfolded ? 12 : 14),
            );
          }),
          SizedBox(height: Sizes.s10),
          _buildSearchField(context),
          SizedBox(height: Sizes.s10),
          _buildCctvList(controller, context),
          SizedBox(height: Sizes.s20),
        ],
      ),
    );
  }

  Widget _buildSearchField(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return TextFormField(
      controller: controller.searchController,
      onChanged: (value) {
        controller.search.value = value;
        controller.searchLokasi();
      },
      decoration: InputDecoration(
        // isDense: true,
        contentPadding: EdgeInsets.symmetric(
            vertical: Sizes.s1, horizontal: isUnfolded ? Sizes.s8 : Sizes.s14),
        hintText: 'Pencarian Titik CCTV',
        hintStyle: Get.textTheme.labelLarge!.copyWith(
            color: AppColors.lightGreyColor, fontSize: isUnfolded ? 12 : 14, ),
        suffixIcon: Icon(
          IconlyLight.search,
          size: isUnfolded ? Sizes.s14 : Sizes.s18,
          color: AppColors.lightGreyColor,
        ),
        // alignLabelWithHint: true,
        // suffixIconConstraints: BoxConstraints(minHeight: 18, minWidth: 24),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.s8),
          borderSide: BorderSide(color: AppColors.outlineColor),
        ),
      ),
      // textAlign: TextAlign.center,
    );
  }

  Widget _buildCctvList(CctvController controller, BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Obx(() {
      if (controller.isLoading.value) {
        return Container(
          width: Get.width,
          height: Get.height * 0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.s10),
              border: Border.all(color: AppColors.lightGreyColor)),
          padding: EdgeInsets.symmetric(horizontal: Sizes.s10),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }

      if (controller.filteredData.value?.isEmpty ?? true) {
        return Container(
          width: Get.width,
          height: Get.height * 0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.s10),
              border: Border.all(color: AppColors.lightGreyColor)),
          padding: EdgeInsets.symmetric(horizontal: Sizes.s10),
          child: Center(
            child: Text(controller.search.value.isEmpty
                ? 'Data tidak ditemukan'
                : 'CCTV dengan kata kunci "${controller.search.value}" tidak ditemukan'),
          ),
        );
      }

      return Container(
        width: Get.width,
        height: isUnfolded ? Get.height * 0.4 : Get.height * 0.7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.s10),
            border: Border.all(color: AppColors.lightGreyColor)),
        padding: EdgeInsets.symmetric(horizontal: Sizes.s10),
        child: ListView.builder(
          itemCount: controller.filteredData.value?.length ?? 0,
          padding: EdgeInsets.symmetric(vertical: Sizes.s10),
          itemBuilder: (context, index) {
            final item = controller.filteredData.value?[index];
            return _buildCctvListItem(controller, item, index);
          },
        ),
      );
    });
  }

  Widget _buildCctvListItem(
      CctvController controller, CctvData? item, int index) {
    return Padding(
      padding: EdgeInsets.only(bottom: Sizes.s10),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          controller.selectedCctv.value = item;
          Get.dialog(
            Dialog(
              backgroundColor: Colors.transparent,
              child: Container(
                width: Get.width * 0.9,
                height: Get.width * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Sizes.s10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(Sizes.s10),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Sizes.s10),
                          topRight: Radius.circular(Sizes.s10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              '${item?.locationName ?? ''} - ${item?.cctvName ?? ''}',
                              style: Get.textTheme.labelLarge!.copyWith(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () => Get.back(),
                            icon: Icon(Icons.close,
                                color: Colors.white, size: 20),
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: CctvPlayer(
                        streamUrl: item?.streamUrl ?? '',
                        isEmbed: ['mjpg', 'embedded', 'rtsp', 'other']
                            .contains(item?.protocol),
                        name:
                            '${item?.locationName ?? ''} - ${item?.cctvName ?? ''}',
                        description:
                            '${item?.cityName ?? ''} - ${item?.provinceName ?? ''}',
                        status: item?.status ?? '',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${(index + 1)}.',
              style: Get.textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 11,
                color: controller.selectedCctv.value?.id == item?.id
                    ? AppColors.primaryColor
                    : AppColors.blackColor,
              ),
            ),
            SizedBox(width: Sizes.s10),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                          () {
                            return Text(
                              '${item?.locationName ?? ''} - ${item?.cctvName ?? ''}',
                              style: Get.textTheme.labelLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: controller.selectedCctv.value?.id ==
                                        item?.id
                                    ? AppColors.primaryColor
                                    : AppColors.blackColor,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: Sizes.s4),
                        Text(
                          item?.cityName ?? '-',
                          style: Get.textTheme.bodySmall!.copyWith(
                            color: AppColors.darkGreyColor,
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(height: Sizes.s2),
                        Text(
                          item?.provinceName ?? '-',
                          style: Get.textTheme.bodySmall!.copyWith(
                            color: AppColors.darkGreyColor,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: Sizes.s6),
                  Obx(
                    () {
                      return SvgPicture.asset(
                        AssetConstant.cctv,
                        color: controller.selectedCctv.value?.id == item?.id
                            ? AppColors.primaryColor
                            : AppColors.blackColor,
                        height: Sizes.s18,
                        width: Sizes.s18,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
