import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/enum/laporan_enum.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/detail_laporan_controller.dart';
import 'package:strategi_hub_app/modules/laporan/views/laporan_pdf_page.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';
import 'package:strategi_hub_app/utils/extentions/enum_extentions.dart';

class DetailApprovalLaporanPage extends GetView<DetailLaporanController> {
  static String routeName = '/detail-approval-laporan-page';
  const DetailApprovalLaporanPage({super.key});

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
            child: Obx(() {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            controller.reportData.value?.nama ?? '-',
                            textAlign: TextAlign.center,
                            style: Get.textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.gradientEndColor),
                          ),
                          SizedBox(height: Sizes.s6),
                          Text(
                            '${LaporanEnum.values.firstWhereOrNull((e) => e.name == controller.reportData.value?.type)?.formattedName} |  ${controller.reportData.value?.pembuat}  |  ${DateFormat('dd MMM yyyy HH:mm').tryFormat(controller.reportData.value?.createdAt?.toLocal())} WIB',
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
                      value: controller.reportData.value?.nama ?? '-',
                    ),
                    SizedBox(height: Sizes.s10),
                    CustomTextForm(
                      label: 'Personil yang Ditugaskan',
                      value: controller.reportData.value?.personil ?? '-',
                    ),
                    SizedBox(height: Sizes.s10),
                    CustomTextForm(
                      label: 'Pengikut yang Ditugaskan / Penyusun Laporan',
                      value: controller.reportData.value?.pengikut ?? '-',
                    ),
                    SizedBox(height: Sizes.s10),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextForm(
                            label: 'Provinsi',
                            value: controller.reportData.value?.provinsi ?? '-',
                          ),
                        ),
                        SizedBox(width: Sizes.s20),
                        Expanded(
                          child: CustomTextForm(
                            label: 'Kabupaten/Kota',
                            value:
                                controller.reportData.value?.kabupaten ?? '-',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Sizes.s10),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextForm(
                            label: 'Angkutan',
                            value: controller.reportData.value?.angkutan ?? '-',
                          ),
                        ),
                        SizedBox(width: Sizes.s20),
                        Expanded(
                          child: CustomTextForm(
                            label: 'Unit Pelayanan',
                            value: controller.reportData.value?.unitPelayanan ??
                                '-',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Sizes.s10),
                    CustomTextForm(
                      label: 'Persetujuan',
                      value: controller.reportData.value?.persetujuan ?? '-',
                    ),
                    SizedBox(height: Sizes.s10),
                    CustomTextForm(
                      label: 'Deskripsi Laporan',
                      value: controller.reportData.value?.deskripsi ?? '-',
                    ),
                    SizedBox(height: Sizes.s10),
                    CustomTextForm(
                      label: 'Kejadian Menonjol',
                      value:
                          controller.reportData.value?.kejadianMenonjol ?? '-',
                    ),
                    SizedBox(height: Sizes.s10),
                    if (controller.reportData.value?.file != null)
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            LaporanPdfPage.routeName,
                            arguments: controller.reportData.value?.file,
                          );
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
                      height: Get.width * 0.8,
                      width: Get.width,
                      child: GoogleMap(
                        mapType: MapType.normal,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(-6.207214, 106.818872),
                          zoom: 15,
                        ),
                        onMapCreated: controller.onMapCreated,
                      ),
                    ),
                    SizedBox(height: Sizes.s20),
                  ],
                ),
              );
            }),
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
}

class CustomTextForm extends StatelessWidget {
  final String label;
  final String value;
  const CustomTextForm({super.key, required this.label, required this.value});

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
        Text(
          value,
          style: Get.textTheme.labelLarge!
              .copyWith(color: AppColors.gradientEndColor),
        ),
      ],
    );
  }
}
