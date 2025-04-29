import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/domain/repositories/report_repository.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/detail_laporan_controller.dart';
import 'package:strategi_hub_app/modules/laporan/views/edit_laporan_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/laporan_pdf_page.dart';

class DetailLaporanPiketIMPage extends StatelessWidget {
  static String routeName = '/detail-laporan-page';
  const DetailLaporanPiketIMPage({super.key});

  @override
  Widget build(BuildContext context) {
    DetailLaporanController controller = Get.put(DetailLaporanController(
      Get.find<ReportRepository>(),
    ));
    return BaseScaffold(
      title: 'LAPORAN',
      body: Container(
        padding: EdgeInsets.fromLTRB(Sizes.s20, Sizes.s10, Sizes.s20, Sizes.s0),
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
                        Get.toNamed(EditLaporanPage.routeName);
                      },
                      child: Text(
                        'Lap Posko Lapangan Pantauan Lalu Lintas Puncak ',
                        style: Get.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.gradientEndColor,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Text(
                      'Tanggal 30 Mar 2025',
                      style: Get.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.gradientEndColor),
                    ),
                    SizedBox(height: Sizes.s6),
                    Text(
                      'Piket IM |  Ditlalin  |  27 Jan 2025 09.00 WIB',
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
                value:
                    'Lap Piket IM {Nama Event} Prov. {Nama Provinsi} Tanggal {Tanggal Penugasan Sesuai IM}',
              ),
              CustomTextForm(
                label: 'Personil yang Ditugaskan',
                value: 'Raymond Ivan Sianturi',
              ),
              CustomTextForm(
                label: 'Pengikut yang Ditugaskan / Penyusun Laporan',
                value: 'Raymond Ivan Sianturi',
              ),
              CustomTextForm(
                label: 'Tanggal pelaporan',
                value: '20 Jan 2025',
              ),
              SizedBox(height: Sizes.s10),
              Row(
                children: [
                  Expanded(
                    child: CustomTextForm(
                      label: 'Provinsi',
                      value: 'Jawa Barat',
                    ),
                  ),
                  SizedBox(width: Sizes.s20),
                  Expanded(
                    child: CustomTextForm(
                      label: 'Kabupaten/Kota',
                      value: 'Kota Bogor',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextForm(
                      label: 'Angkutan',
                      value: 'Darat',
                    ),
                  ),
                  SizedBox(width: Sizes.s20),
                  Expanded(
                    child: CustomTextForm(
                      label: 'Unit Pelayanan',
                      value: 'Terminal Puncak',
                    ),
                  ),
                ],
              ),
              SizedBox(height: Sizes.s10),
              CustomTextForm(
                label: 'Deskripsi Laporan',
                value:
                    'Laporan mobilitas penumpang dan angkutan umum, mobilitas sarana melalui jalan tol dan arteri ',
              ),
              SizedBox(height: Sizes.s10),
              CustomTextForm(
                label: 'Kejadian Menonjol',
                value:
                    'Telah terjadi kepadatan kendaraan yang menyebabkan kemacetan lalu lintas di lokasi Pasar Cisarua',
              ),
              CustomTextForm(
                label: 'Kecelakaan',
                value: 'Jalan',
              ),
              CustomTextForm(
                label: 'Persetujuan',
                value: 'Sinta Rahma',
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
                height: Get.width * 0.5,
                width: Get.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/Menojol1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Kecelakaan Jalan Puncak Bogor, Jawa Barat.',
                style: Get.textTheme.labelLarge!.copyWith(
                    color: const Color.fromARGB(255, 148, 157, 178),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: Sizes.s20),
            ],
          ),
        ),
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
