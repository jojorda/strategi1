import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/google_maps_view.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/detail_laporan_controller.dart';
import 'package:strategi_hub_app/modules/laporan/views/edit_laporan_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/laporan_pdf_page.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';

class DetailLaporanPage extends GetView<DetailLaporanController> {
  static String routeName = '/detail-laporan-page';
  const DetailLaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'LAPORAN',
      body: Stack(
        children: [
          Obx(() {
            return Container(
              padding: EdgeInsets.fromLTRB(
                  Sizes.s20, Sizes.s10, Sizes.s20, Sizes.s0),
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
                          GestureDetector(
                            onTap: () {
                              if (hasPermission(Permission.laporanEdit)) {
                                Get.toNamed(EditLaporanPage.routeName);
                              } else {
                                Get.snackbar(
                                  'Akses Ditolak',
                                  'Anda tidak memiliki akses untuk mengedit laporan',
                                  backgroundColor: Colors.red.shade700,
                                  colorText: Colors.white,
                                );
                              }
                            },
                            child: Text(
                              controller.reportData.value?.nama ?? '',
                              style: Get.textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.gradientEndColor),
                            ),
                          ),
                          SizedBox(height: Sizes.s6),
                          Text(
                            '${controller.reportData.value?.event}  |  Pusintrans  |  ${DateFormat('dd MMM yyyy').tryFormat(controller.reportData.value?.tanggal?.toDateTime())} WIB',
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
                      value: controller.reportData.value?.nama ?? '',
                    ),
                    SizedBox(height: Sizes.s10),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextForm(
                            label: 'Katim Penyedia Data',
                            value: '-',
                          ),
                        ),
                        SizedBox(width: Sizes.s20),
                        Expanded(
                          child: CustomTextForm(
                            label: 'Kabid Pusdatin',
                            value: '-',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Sizes.s10),
                    CustomTextForm(
                      label: 'Ketua Umum',
                      value: '-',
                    ),
                    SizedBox(height: Sizes.s10),
                    CustomTextForm(
                      label: 'Deskripsi Laporan',
                      value: 'Tidak ada',
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
                      height: Get.width * 0.8,
                      width: Get.width,
                      child: GoogleMapsView(markers: [
                        MarkerItem(
                          latitude: 0,
                          longitude: 0,
                          markerId: 'report_location',
                          title: 'Lokasi Laporan',
                        )
                      ]),
                    ),
                    SizedBox(height: Sizes.s20),
                  ],
                ),
              ),
            );
          }),
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
