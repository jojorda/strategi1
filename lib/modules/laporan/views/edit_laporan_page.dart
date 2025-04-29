import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/custom_primary_button.dart';
import 'package:strategi_hub_app/components/google_maps_view.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/helpers/bottom_sheet_helpers.dart';
import 'package:strategi_hub_app/modules/jalan/kecelakaan/controller/detail_kecelakaan_controller.dart';
import 'package:strategi_hub_app/modules/laporan/views/laporan_pdf_page.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class EditLaporanPage extends GetView<DetailIncidentController> {
  static String routeName = '/edit-laporan-page';
  const EditLaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'LAPORAN',
      body: Stack(
        children: [
          Container(
            padding:
                EdgeInsets.fromLTRB(Sizes.s20, Sizes.s10, Sizes.s20, Sizes.s0),
            width: Get.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          controller.incidentReport.value?.name ?? '',
                          style: Get.textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.gradientEndColor),
                        ),
                        SizedBox(height: Sizes.s6),
                        Text(
                          '${controller.incidentReport.value?.category}  |  Pusintrans  |  ${DateFormat('dd MMM yyyy').tryFormat(controller.incidentReport.value?.incidentTime)}',
                          textAlign: TextAlign.center,
                          style: Get.textTheme.bodySmall!
                              .copyWith(color: AppColors.greyColor),
                        ),
                        SizedBox(height: Sizes.s20),
                      ],
                    ),
                  ),
                  CustomTextForm(
                    label: 'Nama Laporan',
                    value: controller.incidentReport.value?.name ?? '',
                  ),
                  SizedBox(height: Sizes.s10),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextForm(
                          label: 'Katim Penyedia Data',
                          value: controller.incidentReport.value
                                  ?.dataProviderTeamLeader ??
                              '',
                          onEdit: () {},
                        ),
                      ),
                      SizedBox(width: Sizes.s20),
                      Expanded(
                        child: CustomTextForm(
                          label: 'Kabid Pusdatin',
                          value:
                              controller.incidentReport.value?.dataCenterHead ??
                                  '',
                          onEdit: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.s10),
                  CustomTextForm(
                    label: 'Ketua Umum',
                    value:
                        controller.incidentReport.value?.generalChairman ?? '',
                    onEdit: () {},
                  ),
                  SizedBox(height: Sizes.s10),
                  Text(
                    'Deskripsi Laporan',
                    textAlign: TextAlign.center,
                    style: Get.textTheme.bodySmall!
                        .copyWith(color: AppColors.greyColor),
                  ),
                  SizedBox(height: Sizes.s4),
                  TextFormField(
                    minLines: 3,
                    maxLines: 5,
                    controller: TextEditingController(
                      text: controller.incidentReport.value?.incidentChronology,
                    ),
                    onChanged: (val) {
                      controller.incidentReport.value?.incidentChronology = val;
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: Sizes.s8, horizontal: Sizes.s14),
                        hintText: controller
                                .incidentReport.value?.incidentChronology ??
                            'Deskripsi Laporan',
                        hintStyle: Get.textTheme.labelLarge!
                            .copyWith(color: AppColors.lightGreyColor),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(Sizes.s8),
                            borderSide:
                                BorderSide(color: AppColors.outlineColor))),
                  ),
                  SizedBox(height: Sizes.s10),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(LaporanPdfPage.routeName);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(Sizes.s4),
                      ),
                      padding: EdgeInsets.symmetric(vertical: Sizes.s12),
                      child: Center(
                        child: Text(
                          'Lihat Dokumen Laporan',
                          style: Get.textTheme.labelLarge!.copyWith(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Sizes.s14),
                  SizedBox(
                    height: Get.width * 0.6,
                    width: Get.width,
                    child: GoogleMapsView(markers: [
                      MarkerItem(
                        latitude: controller.incidentReport.value?.latitude,
                        longitude: controller.incidentReport.value?.longitude,
                        markerId: 'report_location',
                        title: controller.incidentReport.value?.location ?? '',
                      )
                    ]),
                  ),
                  SizedBox(height: Sizes.s14),
                  SizedBox(
                    width: Get.width,
                    child: Row(
                      children: [
                        SizedBox(width: Get.width * 0.3),
                        Flexible(
                            child: CustomPrimaryButton(
                          onPress: () {
                            onCorrection();
                          },
                          text: 'Koreksi',
                          bgColor: AppColors.redColor,
                        )),
                        SizedBox(width: Sizes.s8),
                        Flexible(
                          child: CustomPrimaryButton(
                            onPress: () async {
                              await controller.updateReport().then(
                                (value) {
                                  if (value) {
                                    Get.back();
                                  }
                                },
                              );
                            },
                            text: 'Submit',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Sizes.s40),
                ],
              ),
            ),
          ),
          Obx(() {
            return Positioned.fill(
              child: Visibility(
                visible: controller.isLoading.value,
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

  void onCorrection() {
    BottomSheetHelpers.showCustomBottomSheet(
      backgroundColor: Color(0xFF0D1320),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s12),
        child: Column(
          children: [
            Text(
              "Catatan Koreksi",
              style: Get.textTheme.labelLarge!.copyWith(
                color: AppColors.lightGreyColor,
              ),
            ),
            SizedBox(height: Sizes.s16),
            TextFormField(
              minLines: 5,
              maxLines: 6,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: Sizes.s8, horizontal: Sizes.s14),
                  hintStyle: Get.textTheme.labelLarge!
                      .copyWith(color: AppColors.lightGreyColor),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Sizes.s8),
                      borderSide: BorderSide(color: AppColors.outlineColor))),
            ),
            SizedBox(height: Sizes.s18),
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
                            await controller.updateReport().then(
                              (value) {
                                if (value) {
                                  Get.back();
                                }
                              },
                            );
                          },
                          text: 'OK')),
                ],
              ),
            ),
            SizedBox(height: Sizes.s36),
          ],
        ),
      ),
    );
  }
}

class CustomTextForm extends StatelessWidget {
  final String label;
  final String value;
  final Function()? onEdit;
  const CustomTextForm(
      {super.key, required this.label, required this.value, this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.center,
          style: Get.textTheme.bodySmall!.copyWith(color: AppColors.greyColor),
        ),
        SizedBox(height: Sizes.s2),
        Wrap(
          children: [
            Text(
              value,
              style: Get.textTheme.labelLarge!
                  .copyWith(color: AppColors.gradientEndColor),
            ),
            if (onEdit != null)
              GestureDetector(
                onTap: onEdit,
                child: Padding(
                  padding: EdgeInsets.only(left: Sizes.s4),
                  child: Icon(
                    IconlyLight.edit_square,
                    color: AppColors.gradientEndColor,
                    size: Sizes.s20,
                  ),
                ),
              )
          ],
        ),
      ],
    );
  }
}
