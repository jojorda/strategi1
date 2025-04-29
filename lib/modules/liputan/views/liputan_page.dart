import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/forms/custom_dropdown.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/helpers/bottom_sheet_helpers.dart';
import 'package:strategi_hub_app/helpers/custom_date_picker.dart';
import 'package:strategi_hub_app/modules/cctv/views/cctv_player.dart';
import 'package:strategi_hub_app/modules/liputan/controllers/liputan_controller.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class LiputanPage extends GetView<LiputanController> {
  static const routeName = '/liputan-page';
  const LiputanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildSearchBar(context),
          // SizedBox(height: isUnfolded ? Sizes.s6 : Sizes.s12),
          // _buildFilterRow(context),
          SizedBox(height: isUnfolded ? Sizes.s6 : Sizes.s12),
          _buildLiputanList(context),
          SizedBox(height: isUnfolded ? Sizes.s6 : Sizes.s12),
          SizedBox(height: isUnfolded ? Sizes.s6 : Sizes.s20),
        ],
      ),
    );
  }

  Widget _buildSearchBar(context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            style: Get.textTheme.labelLarge!.copyWith(
              fontSize: isUnfolded ? 11 : 13,
            ),
            textInputAction: TextInputAction.search,
            onChanged: (value) {
              controller.search.value = value;
            },
            decoration: InputDecoration(
              hintText: "Cari..",
              hintStyle: Get.textTheme.labelLarge!.copyWith(
                color: AppColors.lightGreyColor,
                fontSize: isUnfolded ? 11 : 13,
              ),
              prefixIcon: Icon(
                IconlyLight.search,
                color: AppColors.lightGreyColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(isUnfolded ? Sizes.s8 : (isSmallScreen ? Sizes.s8 : Sizes.s12)),
                borderSide: BorderSide(
                  color: AppColors.lightGreyColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(isUnfolded ? Sizes.s8 : (isSmallScreen ? Sizes.s8 : Sizes.s12)),
                borderSide: BorderSide(
                  color: AppColors.lightGreyColor,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: isUnfolded ? Sizes.s7 : isSmallScreen ? Sizes.s8 : Sizes.s12),
        GestureDetector(
          onTap: () => onFilter(context),
          child: Container(
            padding: EdgeInsets.all(isUnfolded ? Sizes.s7 : (isSmallScreen ? Sizes.s6 : Sizes.s10)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isUnfolded ? Sizes.s8 : (isSmallScreen ? Sizes.s8 : Sizes.s12)),
              border: Border.all(
                width: 2,
                color: AppColors.lightGreyColor,
              ),
            ),
            child: Icon(
              Icons.filter_alt_outlined,
              color: AppColors.lightGreyColor,
              size: isUnfolded ? 24 : (isSmallScreen ? 26 : 14),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildFilterRow(context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(() {
          // Initialize both checkboxes to be checked by default
          if (!controller.listSelectedType.value.contains('drone')) {
            controller.listSelectedType.value.add('drone');
          }
          if (!controller.listSelectedType.value.contains('seluler')) {
            controller.listSelectedType.value.add('seluler');
          }

          return Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: isUnfolded ? Sizes.s10 : Sizes.s16,
                  vertical: Sizes.s8),
              decoration: BoxDecoration(
                color: AppColors.navyColor.withOpacity(0.06),
                borderRadius: BorderRadius.circular(Sizes.s20),
              ),
              child: Wrap(
                spacing: Sizes.s10,
                runSpacing: Sizes.s6,
                children: [
                  _filterItem(
                    context: context,
                    label: 'Drone',
                    value: 'drone',
                    checked: controller.listSelectedType.value.contains('drone'),
                    onChanged: () {
                      controller.updateChecklist('drone');
                    },
                  ),
                  _filterItem(
                    context: context,
                    label: 'Seluler',
                    value: 'seluler',
                    checked: controller.listSelectedType.value.contains('seluler'),
                    onChanged: () {
                      controller.updateChecklist('seluler');
                    },
                  ),
                ],
              ),
            ),
          );
        }),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Live",
              style: Get.textTheme.bodyMedium!
                  .copyWith(fontSize: isUnfolded ? 14 : FontSizes.s14),
            ),
            Transform.scale(
              scale: 0.8,
              child: Obx(
                () => CupertinoSwitch(
                  value: controller.isLive.value,
                  activeColor: AppColors.gradientEndColor,
                  inactiveTrackColor: Colors.grey,
                  onChanged: (value) {
                    controller.isLive.value = value;
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLiputanList(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Obx(
      () {
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
        return Container(
          width: Get.width,
          height: isUnfolded ? Get.height * 0.6 : (isSmallScreen ? Get.height * 0.7 : Get.height * 0.7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.s10),
            border: Border.all(color: AppColors.lightGreyColor),
          ),
          padding: EdgeInsets.symmetric(horizontal: Sizes.s10),
          child: ListView.builder(
            itemCount: controller.filteredData.value?.length ?? 0,
            padding: EdgeInsets.symmetric(vertical: Sizes.s10),
            itemBuilder: (context, index) {
              final item = controller.filteredData.value?[index];
              return Padding(
                padding: EdgeInsets.only(bottom: Sizes.s10),
                child: GestureDetector(
                  onTap: () {
                    controller.selectedLiputan.value = item;
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        final screenWidth = MediaQuery.of(context).size.width;
                        final isUnfolded = screenWidth > 600;
                        return Dialog(
                          backgroundColor: Colors.transparent,
                          insetPadding: EdgeInsets.symmetric(
                            horizontal: isUnfolded ? Sizes.s24 : Sizes.s16,
                            vertical: isUnfolded ? Sizes.s10 : Sizes.s24,
                          ),
                          child: 
                          Container(
                            height: isUnfolded ? Get.height * 0.5 : Get.height * 0.2,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(Sizes.s10),
                                topRight: Radius.circular(Sizes.s10),
                                // bottomLeft: Radius.circular(Sizes.s10),
                                // bottomRight: Radius.circular(Sizes.s10),
                              ),
                            ),
                            child: 
                            Stack(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(Sizes.s2),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '',
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
                                        streamUrl: item?.urlYoutubeStreaming ?? '',
                                        isEmbed: true,
                                        autoPlay: true,
                                        name: item?.judul ?? '',
                                        description: item?.judul ?? '',
                                        status: 'online',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ).then((value) {
                      controller.selectedLiputan.value = null;
                    });
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(() {
                        return Text(
                          '${(index + 1)}.',
                          style: Get.textTheme.labelLarge!.copyWith(
                            color:
                                controller.selectedLiputan.value?.id == item?.id
                                    ? AppColors.primaryColor
                                    : AppColors.blackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: isUnfolded ? 11 : 13,
                          ),
                        );
                      }),
                      SizedBox(width: Sizes.s8),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Obx(() {
                                    return Text(
                                      item?.judul ?? '',
                                      style: Get.textTheme.labelLarge!.copyWith(
                                        color: controller.selectedLiputan.value
                                                    ?.id ==
                                                item?.id
                                            ? AppColors.primaryColor
                                            : AppColors.blackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: isUnfolded ? 11 : 13,
                                      ),
                                    );
                                  }),
                                  SizedBox(
                                      height: isUnfolded ? Sizes.s2 : Sizes.s4),
                                  Text(
                                    DateFormat('dd MMM yyyy | HH:mm WIB', 'id')
                                        .tryFormat(item?.jadwalStreaming),
                                    style: Get.textTheme.labelMedium!.copyWith(
                                      color: AppColors.darkGreyColor,
                                      fontSize: isUnfolded ? 11 : 13,
                                    ),
                                  ),
                                  SizedBox(height: Sizes.s2),
                                  Text(
                                    item?.judul ?? '',
                                    style: Get.textTheme.labelMedium!.copyWith(
                                      color: AppColors.darkGreyColor,
                                      fontSize: isUnfolded ? 11 : 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: Sizes.s6),
                            SvgPicture.asset(
                              getAsset(item?.tipeMedia ?? ''),
                              color: AppColors.blackColor,
                              height: isUnfolded ? Sizes.s15 : isSmallScreen ? Sizes.s12 : Sizes.s24,
                              width: isUnfolded ? Sizes.s15 : isSmallScreen ? Sizes.s12 : Sizes.s24,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  String getAsset(String type) {
    switch (type) {
      case 'drone':
        return AssetConstant.streamingIcon;
      case 'seluler':
        return AssetConstant.mobileIcon;
      default:
        return AssetConstant.cctv;
    }
  }

  Widget _filterItem({
    context,
    required String label,
    required String value,
    required bool checked,
    void Function()? onChanged,
  }) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: Sizes.s14,
          width: Sizes.s14,
          child: Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.s4),
            ),
            side: BorderSide(color: AppColors.blackColor),
            value: checked,
            onChanged: (value) {
              if (value != null) {
                onChanged?.call();
              }
            },
          ),
        ),
        SizedBox(width: Sizes.s6),
        Text(
          label,
          style: Get.textTheme.bodySmall!.copyWith(
            fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s10),
          ),
        ),
      ],
    );
  }

  void onFilter(context) {
    final screenHeight = MediaQuery.of(Get.context!).size.height;
    final screenWidth = MediaQuery.of(Get.context!).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    BottomSheetHelpers.showCustomBottomSheet(
      backgroundColor: Color(0xFF0D1320),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      "Catatan Koreksi",
                      style: Get.textTheme.labelLarge!.copyWith(
                        color: AppColors.lightGreyColor,
                        fontSize: isUnfolded ? 18 : (isSmallScreen ? 14 : FontSizes.s10),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Get.back();
                    controller.clearFilter();
                  },
                  icon: Icon(Icons.clear),
                )
              ],
            ),
            SizedBox(height: Sizes.s16),
            Obx(() {
              return TextFormField(
                readOnly: true,
                onTap: () {
                  CustomDatePicker.selectDate(
                    type: PickDateType.week,
                    initialDates: controller.selectedRange.value,
                    onSelectedDate: (p0, p1) {
                      controller.selectedRange.value = [p0, p1];
                    },
                  );
                },
                controller: controller.selectedRange.value[0] != null
                    ? TextEditingController(
                        text: controller.selectedRange.value
                            .map((e) =>
                                DateFormat('dd MMM yyyy', 'id').tryFormat(e))
                            .join(' - '),
                      )
                    : null,
                style: TextStyle(
                  fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 14),
                  overflow: TextOverflow.ellipsis,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.calendar_month_outlined,
                    color: AppColors.lightGreyColor,
                    size: isUnfolded ? 18 : (isSmallScreen ? 14 : 14),
                  ),
                  suffixIconConstraints: BoxConstraints(
                    minWidth: isUnfolded ? Sizes.s36 : (isSmallScreen ? Sizes.s24 : Sizes.s36),
                    minHeight: isUnfolded ? Sizes.s24 : (isSmallScreen ? Sizes.s24 : Sizes.s24),
                  ),
                  hintText: "Rentang Waktu",
                  hintStyle: Get.textTheme.labelLarge!
                      .copyWith(color: AppColors.lightGreyColor, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 14)),
                  fillColor: Color(0xFF0D1320),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: Sizes.s8, horizontal: Sizes.s16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Sizes.s8),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: AppColors.outlineColor,
                      width: Sizes.s1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Sizes.s8),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: AppColors.outlineColor,
                      width: Sizes.s1,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Sizes.s8),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: AppColors.outlineColor,
                      width: Sizes.s1,
                    ),
                  ),
                ),
              );
            }),
            SizedBox(height: Sizes.s12),
            Obx(() {
              return CustomDropdown(
                data: controller.listMatra.value,
                hint: "Matra",
                onChanged: (value) {
                  controller.selectedMatra.value = value ?? '';
                },
                value: controller.selectedMatra.value.isEmpty
                    ? null
                    : controller.selectedMatra.value,
                onSaved: (value) {},
                isDarkMode: true,
              );
            }),
            SizedBox(height: Sizes.s12),
            Obx(() {
              return CustomDropdown(
                data: controller.listKontributor.value,
                hint: "Kontributor",
                onChanged: (value) {
                  controller.selectedKontributor.value = value ?? '';
                },
                value: controller.selectedKontributor.value.isEmpty
                    ? null
                    : controller.selectedKontributor.value,
                onSaved: (value) {},
                isDarkMode: true,
              );
            }),
            SizedBox(height: Sizes.s12),
            Obx(() {
              return CustomDropdown(
                data: controller.listLokasi.value,
                hint: "Jenis Lokasi",
                onChanged: (value) {
                  controller.selectedLokasi.value = value ?? '';
                },
                value: controller.selectedLokasi.value.isEmpty
                    ? null
                    : controller.selectedLokasi.value,
                onSaved: (value) {},
                isDarkMode: true,
              );
            }),
            SizedBox(height: Sizes.s36),
          ],
        ),
      ),
    );
  }
}
