import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/custom_primary_button.dart';
import 'package:strategi_hub_app/components/custom_upload_file.dart';
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

class AddLaporanPiketPage extends GetView<AddLaporanController> {
  static String routeName = '/add-laporan-piket-page';
  const AddLaporanPiketPage({super.key});

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
                    hint: 'Piket Instruksi Menteri',
                    onChanged: null,
                    onSaved: null,
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
                    maxLines: 2,
                    minLines: 2,
                    onChanged: (value) {
                      controller.reportName.value = value;
                    },
                  ),
                  SizedBox(height: Sizes.s10),
                  CustomTextField(
                    controller: TextEditingController(),
                    label: 'Personil yang ditugaskan',
                    enable: true,
                    onChanged: (value) {
                      controller.assignedPerson.value = value;
                    },
                  ),
                  SizedBox(height: Sizes.s10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Obx(
                        () => Expanded(
                          child: CustomTextField(
                            controller: TextEditingController(
                                text: controller.followers.value.join(', ')),
                            label:
                                'Pengikut yang Ditugaskan / Penyusun Laporan',
                            enable: false,
                          ),
                        ),
                      ),
                      SizedBox(width: Sizes.s6),
                      GestureDetector(
                        onTap: () {
                          _showAddFollowerBottomSheet(
                              context,
                              (f) => controller.followers.value = f
                                  .where((element) => element.isNotEmpty)
                                  .toList(),
                              controller.followers.value);
                        },
                        child: Container(
                          height: Sizes.s40,
                          width: Sizes.s40,
                          decoration: BoxDecoration(
                              color: AppColors.infoColor,
                              border:
                                  Border.all(color: AppColors.lightGreyColor),
                              borderRadius: BorderRadius.circular(Sizes.s10)),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            color: AppColors.whiteColor,
                          )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Sizes.s10),
                  GestureDetector(
                    onTap: () {
                      CustomDatePicker.pickDate(onSelectedDate: (date) {
                        if (date != null) {
                          controller.dateFc.text =
                              DateFormat("d MMMM y", "id_ID").format(date);
                          controller.reportDate.value = date;
                        }
                      });
                    },
                    child: CustomTextField(
                      controller: controller.dateFc,
                      label: 'Tanggal Pelaporan',
                      icon: IconlyLight.calendar,
                      enable: false,
                    ),
                  ),
                  SizedBox(height: Sizes.s10),
                  Obx(
                    () => Container(
                      child: controller.provinces.isEmpty
                          ? Center(child: CircularProgressIndicator())
                          : CustomDropdown(
                              data: controller.provinces
                                  .map((e) => e.name)
                                  .toList(),
                              hint: 'Provinsi',
                              label: 'Provinsi',
                              onChanged: (value) {
                                controller.pickProvinsi(value);
                              },
                              onSaved: (value) {},
                            ),
                    ),
                  ),
                  SizedBox(height: Sizes.s10),
                  Obx(
                    () => CustomDropdown(
                      data: controller.districts.map((e) => e.name).toList(),
                      hint: 'Kabupaten/Kota',
                      label: 'Kabupaten/Kota',
                      value: controller.pickedKota.value,
                      onChanged: controller.pickedProvinsi.value == ''
                          ? null
                          : (value) {
                              controller.pickKota(value);
                            },
                      onSaved: (value) {},
                    ),
                  ),
                  SizedBox(height: Sizes.s10),
                  CustomDropdown(
                    data: controller.angkutanOptions
                        .map((e) => e.capitalizeFirst)
                        .toList(),
                    hint: 'Angkutan',
                    label: 'Angkutan',
                    onChanged: (value) {
                      controller.pickedAngkutan.value =
                          value?.toLowerCase() ?? '';
                    },
                    onSaved: (value) {},
                  ),
                  SizedBox(height: Sizes.s10),
                  CustomDropdown(
                    // TODO: Integrate get unit
                    data: [
                      'Terminal Tipe A Pulo Gebang',
                      'Terminal Tipe A Kp Rambutan',
                      'Terminal Tipe A Mangkang',
                      'Terminal Tipe A Tirtonadi'
                    ],
                    hint: 'Unit Pelayanan',
                    label: 'Unit Pelayanan',
                    onChanged: (value) {
                      controller.pickedUnit.value = value ?? '';
                    },
                    onSaved: (value) {},
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
                    label: 'Kejadian Menonjol',
                    minLines: 3,
                    maxLines: 5,
                    onChanged: (value) {
                      controller.reportKejadianMenonjol.value = value;
                    },
                  ),
                  SizedBox(height: Sizes.s10),
                  CustomTextField(
                    controller: TextEditingController(),
                    label: 'Kecelakaan',
                    minLines: 3,
                    maxLines: 5,
                    onChanged: (value) {
                      controller.reportKecelakaan.value = value;
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
                  SizedBox(height: Sizes.s10),
                  CustomUploadFile(
                    label: 'Upload File',
                    icon: AssetConstant.pdfSvg,
                    onTap: controller.pickPdf,
                  ),
                  SizedBox(height: Sizes.s4),
                  Obx(
                    () => Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: Get.width * 0.5,
                        child: Text(
                          controller.pickedFileName.value,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Sizes.s4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomUploadFile(
                        label: 'Upload Foto',
                        icon: AssetConstant.image,
                        onTap: controller.pickPhoto,
                      ),
                      SizedBox(width: Sizes.s10),
                      Expanded(
                        child: CustomTextField(
                          controller: TextEditingController(),
                          hintText: 'Caption Foto',
                          onChanged: (value) {
                            controller.reportPhotoCaption.value = value;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.s4),
                  Obx(
                    () => Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: Get.width * 0.5,
                        child: Text(
                          controller.pickedPhotoName.value,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
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
                                onPress: () async {
                                  // Todo : remove code ( add laporan are hidden in new updated design )
                                  // await controller.addLaporanPiketIM();
                                },
                                text: 'OK')),
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

  void _showAddFollowerBottomSheet(BuildContext context,
      Function(List<String>) onAddFollowers, List<String> defaultValue) {
    RxList<String> followers = defaultValue.obs;
    RxList<TextEditingController> controllers =
        RxList.generate(followers.length, (index) {
      return TextEditingController(text: followers[index]);
    });
    BottomSheetHelpers.showCustomBottomSheet(
      isScrollControlled: true,
      persistent: true,
      backgroundColor: Color(0xFF0D1320),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Tambah Pengikut",
              style: Get.textTheme.labelLarge!.copyWith(
                color: AppColors.lightGreyColor,
              ),
            ),
            SizedBox(height: Sizes.s20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nama Pengikut",
                  style: Get.textTheme.bodyMedium!.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
                SizedBox(height: Sizes.s8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.s8),
                    border: Border.all(color: AppColors.lightGreyColor),
                  ),
                  child: Obx(
                    () => ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: followers.length,
                      itemBuilder: (context, index) {
                        return TextField(
                          controller: controllers[index],
                          style: TextStyle(color: AppColors.blackColor),
                          decoration: InputDecoration(
                            hintText: 'Masukkan Nama',
                            hintStyle: TextStyle(
                                color:
                                    AppColors.lightGreyColor.withOpacity(0.5)),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: Sizes.s12, vertical: Sizes.s12),
                            suffixIcon: index != followers.length - 1
                                ? GestureDetector(
                                    onTap: () {
                                      controllers.removeAt(index);
                                      followers.removeAt(index);
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(Sizes.s8),
                                      decoration: BoxDecoration(
                                        color: AppColors.blackColor
                                            .withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(Sizes.s6),
                                      ),
                                      child: Icon(
                                        Icons.close,
                                        color: AppColors.blackColor,
                                        size: Sizes.s20,
                                      ),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      controllers.add(TextEditingController());
                                      followers.add('');
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(Sizes.s8),
                                      decoration: BoxDecoration(
                                        color: AppColors.blackColor
                                            .withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(Sizes.s6),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: AppColors.blackColor,
                                        size: Sizes.s20,
                                      ),
                                    ),
                                  ),
                          ),
                          onChanged: (value) {
                            followers[index] = value;
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Sizes.s24),
            Row(
              children: [
                Expanded(
                  child: CustomPrimaryButton(
                    onPress: () {
                      Get.back();
                    },
                    text: 'Batal',
                    bgColor: Colors.pink,
                  ),
                ),
                SizedBox(width: Sizes.s8),
                Expanded(
                  child: CustomPrimaryButton(
                    onPress: () {
                      onAddFollowers(followers);
                      Get.back();
                    },
                    text: 'Tambah',
                    bgColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
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
