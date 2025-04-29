import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/custom_primary_button.dart';
import 'package:strategi_hub_app/components/forms/custom_dropdown.dart';
import 'package:strategi_hub_app/components/forms/custom_map_dropdown.dart';
import 'package:strategi_hub_app/components/forms/custom_text_field.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/helpers/bottom_sheet_helpers.dart';
import 'package:strategi_hub_app/helpers/custom_date_picker.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/add_laporan_controller.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class AddLaporanMingguanPage extends GetView<AddLaporanController> {
  static String routeName = '/add-laporan-mingguan-page';
  const AddLaporanMingguanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'INPUT LAPORAN',
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  Sizes.s20, Sizes.s10, Sizes.s20, Sizes.s0),
              child: Column(
                children: [
                  CustomDropdown(
                    data: [],
                    value: 'Mingguan PIT',
                    hint: 'Mingguan PIT',
                    onChanged: (value) {},
                    onSaved: (value) {},
                  ),
                  SizedBox(height: Sizes.s10),
                  CustomDropdown(
                    data: [
                      'Event',
                      'Mingguan',
                      'Bulanan',
                    ],
                    hint: 'Event',
                    onChanged: (value) {
                      controller.reportEvent.value = value ?? '';
                    },
                    onSaved: (value) {},
                  ),
                  SizedBox(height: Sizes.s10),
                  CustomTextField(
                    controller: TextEditingController(),
                    label: 'Nama Laporan',
                    onChanged: (value) {
                      controller.reportName.value = value;
                    },
                  ),
                  SizedBox(height: Sizes.s10),
                  GestureDetector(
                    onTap: () {
                      CustomDatePicker.pickDate(onSelectedDate: (date) {
                        if (date != null) {
                          controller.reportDate.value = date;
                        }
                      });
                    },
                    child: Obx(() {
                      return CustomTextField(
                        controller: TextEditingController()
                          ..text = DateFormat("d MMMM y", "id_ID")
                              .tryFormat(controller.reportDate.value),
                        label: 'Tanggal Laporan',
                        icon: IconlyLight.calendar,
                        enable: false,
                      );
                    }),
                  ),
                  SizedBox(height: Sizes.s10),
                  CustomTextField(
                    controller: TextEditingController(),
                    label: 'Deskripsi Laporan',
                    minLines: 3,
                    maxLines: 5,
                    onChanged: (value) {
                      controller.reportDescription.value = value;
                    },
                  ),
                  SizedBox(height: Sizes.s10),
                  CustomTextField(
                    controller: TextEditingController(),
                    label: 'Pembuat Laporan',
                    onChanged: (value) {
                      controller.reportCreator.value = value;
                    },
                  ),
                  SizedBox(height: Sizes.s10),
                  Obx(
                    () => CustomMapDropdown(
                      data: controller.userApproval.value,
                      onChanged: (value) {
                        controller.pickPersetujuan(value);
                      },
                      hint: '',
                      label: 'Persetujuan',
                    ),
                  ),
                  SizedBox(height: Sizes.s20),
                  SizedBox(
                    width: Get.width,
                    child: Row(
                      children: [
                        SizedBox(width: Get.width * 0.4),
                        Flexible(
                            child: CustomPrimaryButton(
                          onPress: () {
                            Get.back();
                          },
                          text: 'Batal',
                          bgColor: AppColors.redColor,
                        )),
                        SizedBox(width: Sizes.s8),
                        Flexible(
                          child: CustomPrimaryButton(
                            onPress: () {
                              // Todo : remove code ( add laporan are hidden in new updated design )
                              // controller.addLaporan();
                            },
                            text: 'OK',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Sizes.s60),
                ],
              ),
            ),
          ),
          Obx(() {
            return Visibility(
              visible: controller.isLoading.value,
              child: Positioned.fill(
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
      ),
    );
  }

  void crashform() {
    AddLaporanController controller = Get.find();
    BottomSheetHelpers.showCustomBottomSheet(
      isScrollControlled: true,
      persistent: true,
      backgroundColor: Color(0xFF0D1320),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s12),
        child: SizedBox(
          height: Get.height * 0.6,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Pelaporan Kecelakaan",
                        style: Get.textTheme.labelLarge!.copyWith(
                          color: AppColors.lightGreyColor,
                        ),
                      ),
                      SizedBox(height: Sizes.s16),
                      CustomDropdown(
                        data: [
                          'Darat',
                          'Laut',
                          'Udara',
                        ],
                        label: "Matra",
                        hint: "Matra",
                        onChanged: (value) {},
                        onSaved: (value) {},
                        isDarkMode: true,
                      ),
                      SizedBox(height: Sizes.s12),
                      GestureDetector(
                        onTap: () {
                          CustomDatePicker.pickDate(onSelectedDate: (date) {
                            if (date != null) {
                              controller.dateKejadianFc.text =
                                  DateFormat("d MMMM y", "id_ID").format(date);
                            }
                          });
                        },
                        child: CustomTextField(
                          controller: controller.dateKejadianFc,
                          label: 'Tanggal & Waktu Kejadian',
                          icon: IconlyLight.calendar,
                          isDarkMode: true,
                          enable: false,
                        ),
                      ),
                      SizedBox(height: Sizes.s12),
                      CustomDropdown(
                        data: [
                          'Tunggal',
                          'Beruntun',
                        ],
                        hint: "Jenis Kecelakaan",
                        label: "Jenis Kecelakaan",
                        onChanged: (value) {},
                        onSaved: (value) {},
                        isDarkMode: true,
                      ),
                      SizedBox(height: Sizes.s12),
                      CustomTextField(
                        controller: TextEditingController(),
                        label: 'Uraian',
                        minLines: 3,
                        maxLines: 5,
                        isDarkMode: true,
                      ),
                      SizedBox(height: Sizes.s12),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Korban Jiwan',
                                  isDarkMode: true,
                                ),
                                Text('Orang',
                                    style: Get.textTheme.bodyMedium!.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: FontSizes.s11,
                                        color: AppColors.whiteColor))
                              ],
                            ),
                          ),
                          SizedBox(width: Sizes.s12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Luka Berat',
                                  isDarkMode: true,
                                ),
                                Text('Orang',
                                    style: Get.textTheme.bodyMedium!.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: FontSizes.s11,
                                        color: AppColors.whiteColor))
                              ],
                            ),
                          ),
                          SizedBox(width: Sizes.s12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Luka Ringan',
                                  isDarkMode: true,
                                ),
                                Text('Orang',
                                    style: Get.textTheme.bodyMedium!.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: FontSizes.s11,
                                        color: AppColors.whiteColor))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Sizes.s12),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Hilang',
                                  isDarkMode: true,
                                ),
                                Text('Orang',
                                    style: Get.textTheme.bodyMedium!.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: FontSizes.s11,
                                        color: AppColors.whiteColor))
                              ],
                            ),
                          ),
                          SizedBox(width: Sizes.s12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Selamat',
                                  isDarkMode: true,
                                ),
                                Text('Orang',
                                    style: Get.textTheme.bodyMedium!.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: FontSizes.s11,
                                        color: AppColors.whiteColor))
                              ],
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                      SizedBox(height: Sizes.s12),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: CustomDropdown(
                              data: [
                                'Dampak 1',
                                'Dampak 2',
                                'Dampak 3',
                              ],
                              label: "Dampak Lingkungan",
                              hint: "Dampak Lingkungan",
                              onChanged: (value) {},
                              onSaved: (value) {},
                              isDarkMode: true,
                            ),
                          ),
                          SizedBox(width: Sizes.s8),
                          Expanded(
                              child: CustomTextField(
                            controller: TextEditingController(),
                            isDarkMode: true,
                          ))
                        ],
                      ),
                      SizedBox(height: Sizes.s12),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: CustomDropdown(
                              data: [
                                'Dampak 1',
                                'Dampak 2',
                                'Dampak 3',
                              ],
                              label: "Dampak Lalu Lintas",
                              hint: "Dampak Lalu Lintas",
                              onChanged: (value) {},
                              onSaved: (value) {},
                              isDarkMode: true,
                            ),
                          ),
                          SizedBox(width: Sizes.s8),
                          Expanded(
                              child: CustomTextField(
                            controller: TextEditingController(),
                            isDarkMode: true,
                          ))
                        ],
                      ),
                      SizedBox(height: Sizes.s12),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: CustomDropdown(
                              data: [
                                'Status 1',
                                'Status 2',
                                'Status 3',
                              ],
                              label: "Status Penanggulangan",
                              hint: "Status Penanggulangan",
                              onChanged: (value) {},
                              onSaved: (value) {},
                              isDarkMode: true,
                            ),
                          ),
                          SizedBox(width: Sizes.s8),
                          Expanded(
                              child: CustomTextField(
                            controller: TextEditingController(),
                            isDarkMode: true,
                          ))
                        ],
                      ),
                      SizedBox(height: Sizes.s12),
                      CustomTextField(
                        controller: TextEditingController(),
                        label: 'Lokasi',
                        isDarkMode: true,
                      ),
                      SizedBox(height: Sizes.s12),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: CustomTextField(
                              controller: TextEditingController(),
                              label: 'Koordinat',
                              isDarkMode: true,
                            ),
                          ),
                          SizedBox(width: Sizes.s8),
                          Container(
                            height: Sizes.s40,
                            width: Sizes.s40,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.lightGreyColor),
                                borderRadius: BorderRadius.circular(Sizes.s10)),
                            child: Center(
                              child: SvgPicture.asset(
                                AssetConstant.pinMap,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: Sizes.s36),
                    ],
                  ),
                ),
              ),
              SizedBox(height: Sizes.s20),
              SizedBox(
                width: Get.width,
                child: Row(
                  children: [
                    Spacer(),
                    Flexible(
                        child: CustomPrimaryButton(
                      onPress: () {
                        Get.back();
                      },
                      text: 'Batal',
                      bgColor: AppColors.redColor,
                    )),
                    SizedBox(width: Sizes.s8),
                    Flexible(
                        child: CustomPrimaryButton(
                            onPress: () {
                              Get.back();
                            },
                            text: 'Lanjutkan')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
