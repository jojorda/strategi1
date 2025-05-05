import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/empty_state.dart';
import 'package:strategi_hub_app/components/forms/custom_dropdown.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/domain/entities/performance_report.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/kinerja_laporan_controller.dart';
import 'package:strategi_hub_app/modules/laporan/views/status_laporan.dart';
import 'package:strategi_hub_app/utils/extentions/string_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class KinerjaLaporanPage extends GetView<KinerjaLaporanController> {
  const KinerjaLaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return RefreshIndicator(
      onRefresh: () async {
        controller.getReport();
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: Sizes.s6),
            Row(
              children: [
                Expanded(
                  child: CustomDropdown(
                      data: controller.listModa
                          .map((e) => e.getModaName())
                          .toList(),
                      hint: "Pilih Angkatan",
                      onSaved: (data) {},
                      onChanged: (data) {
                        controller.selectedModa.value = data ?? '';
                      },
                      value: controller.selectedModa.value),
                ),
                SizedBox(width: Sizes.s12),
                Expanded(
                  child: CustomDropdown(
                      data: controller.listTahun,
                      hint: "Periode",
                      onSaved: (data) {},
                      onChanged: (data) {
                        controller.selectedTahun.value = data ?? '';
                      },
                      value: controller.selectedTahun.value),
                ),
              ],
            ),
            SizedBox(height: Sizes.s5),
            Obx(
              () => Text(
                "Kinerja Pelaporan ${controller.selectedModa.value}",
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold, fontSize: isUnfolded ? 18 : (isSmallScreen ? 17 : 16)
                ),
              ),
            ), 
            Obx(
              () => Text(
                controller.selectedTahun.value,
                style: Get.textTheme.titleSmall!.copyWith(
                  color: AppColors.darkGreyColor, fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 14)
                ),
              ),
            ),
            SizedBox(height: Sizes.s3),
            Obx(
              () => Stack(
                children: [
                  Visibility(
                    visible: controller.listReport.isNotEmpty,
                    replacement: controller.isLoading.value
                        ? Text('')
                        : controller.isError.value
                            ? Text('Memuat data')
                            : EmptyState(),
                    child: isUnfolded
                        // Layout grid 2x2 untuk Z Fold saat terbuka
                        ? GridView.builder(
                            padding: EdgeInsets.all(5),
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.4,
                              crossAxisSpacing: 30,
                              mainAxisSpacing: 20,
                            ),
                            itemCount: controller.listReport.length,
                            itemBuilder: (context, index) {
                              var data = controller.listReport[index];
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: CustomDoughnutChart(
                                  color: controller.listColor[index % controller.listColor.length],
                                  data: data,
                                  isUnfolded: true,
                                ),
                              );
                            },
                          )
                        // Layout list original untuk tampilan normal
                        : ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var data = controller.listReport[index];
                              return CustomDoughnutChart(
                                color: controller.listColor[index % controller.listColor.length],
                                data: data,
                                isUnfolded: false,
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(height: Sizes.s16),
                            itemCount: controller.listReport.length,
                          ),
                  ),
                  Visibility(
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
                ],
              ),
            ),
            // TODO: remove when navigation to status laporan already implemented
            SizedBox(height: 10),
            Obx(
              () => [ModaType.jalan, ModaType.laut, ModaType.asdp].any(
                (moda) => controller.selectedModa.value == moda.getModaName(),
              )
                  ? ElevatedButton(
                      onPressed: () {
                        Get.toNamed(StatusPelaporanScreen.routeName,
                            arguments: {
                              'moda': controller.selectedModa.value,
                            });
                      },
                      child: Text('Status Laporan'),
                    )
                  : SizedBox(),
            ),

            SizedBox(height: Sizes.s24),
          ],
        ),
      ),
    );
  }
}

class CustomDoughnutChart extends StatelessWidget {
  const CustomDoughnutChart({
    super.key, 
    required this.data, 
    required this.color,
    this.isUnfolded = false,
  });

  final PerformanceReport? data;
  final Color color;
  final bool isUnfolded;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    
    if (isUnfolded) {
      // Layout untuk Z Fold terbuka
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Judul di atas chart dan terpusat dengan chart
              Container(
                width: 160,
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  data?.pengelola ?? '',
                  style: Get.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              // Chart donat tanpa judul - DIPERBESAR
              SizedBox(
                height: 140,
                width: 185,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SfCircularChart(
                      margin: EdgeInsets.zero,
                      series: <CircularSeries>[
                        DoughnutSeries<ChartData, String>(
                          dataSource: [
                            ChartData("Completed", data?.laporanMasuk?.toDouble() ?? 0, color),
                            ChartData(
                              "Remaining",
                              (data?.targetLaporan?.toDouble() ?? 0) - (data?.laporanMasuk?.toDouble() ?? 0),
                              AppColors.lightGreyColor.withOpacity(0.75),
                            ),
                          ],
                          xValueMapper: (ChartData data, _) => '(${data.label})',
                          yValueMapper: (ChartData data, _) => data.value,
                          pointColorMapper: (ChartData data, _) => data.color,
                          innerRadius: "70%",
                          radius: '100%',
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${data?.laporanMasuk}/${data?.targetLaporan}",
                          style: Get.textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          data?.persentase ?? '0%',
                          style: Get.textTheme.bodyLarge!.copyWith(
                            color: color,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          // Info cards sejajar dengan chart
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _smallInfoCard(
                  context,
                  "Jumlah Simpul",
                  data?.jumlahSimpul?.toString() ?? '-',
                  Color(0xFF404040),
                  AppColors.whiteColor,
                ),
                SizedBox(height: 10),
                _smallInfoCard(
                  context,
                  "Simpul Pantau",
                  data?.jumlahPantau?.toString() ?? '-',
                  Colors.grey.shade400,
                  AppColors.blackColor,
                ),
                SizedBox(height: 10),
                _smallInfoCard(
                  context,
                  "Jumlah Melapor",
                  data?.simpulMelapor?.toString() ?? '-',
                  color,
                  AppColors.whiteColor,
                ),
              ],
            ),
          )
        ],
      );
    } else {
      // Layout original untuk tampilan normal
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Judul di atas chart dan terpusat dengan chart
              Container(
                width: isUnfolded? Sizes.s170 : Sizes.s180,
                padding: EdgeInsets.only(bottom: 12),
                child: Text(
                  data?.pengelola ?? '',
                  style: Get.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold, 
                    fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 14)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Chart donat tanpa judul - DIPERBESAR
              SizedBox(
                height: isUnfolded? Sizes.s150 : isSmallScreen ? Sizes.s140 : Sizes.s160,
                width: isUnfolded? Sizes.s170 : isSmallScreen ? Sizes.s160 : Sizes.s180,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SfCircularChart(
                      margin: EdgeInsets.zero,
                      series: <CircularSeries>[
                        DoughnutSeries<ChartData, String>(
                          dataSource: [
                            ChartData("Completed",
                                data?.laporanMasuk?.toDouble() ?? 0, color),
                            ChartData(
                              "Remaining",
                              (data?.targetLaporan?.toDouble() ?? 0) -
                                  (data?.laporanMasuk?.toDouble() ?? 0),
                              AppColors.lightGreyColor.withOpacity(0.75),
                            ),
                          ],
                          xValueMapper: (ChartData data, _) => '(${data.label})',
                          yValueMapper: (ChartData data, _) => data.value,
                          pointColorMapper: (ChartData data, _) => data.color,
                          innerRadius: "70%",
                          radius: '100%',
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${data?.laporanMasuk}/${data?.targetLaporan}",
                          style: Get.textTheme.bodyLarge!
                              .copyWith(fontWeight: FontWeight.bold, fontSize: isUnfolded ? 14 : (isSmallScreen ? 15 : 15)),
                        ),
                        Text(
                          data?.persentase ?? '0%',
                          style: Get.textTheme.headlineMedium!.copyWith(
                            color: color, fontSize: isUnfolded ? 14 : (isSmallScreen ? 18 : 18)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: Sizes.s24),
          // Info cards sejajar dengan chart
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _infoCard(
                  context,
                  "Jumlah Simpul",
                  data?.jumlahSimpul?.toString() ?? '-',
                  Color(0xFF404040),
                  AppColors.whiteColor,
                ),
                SizedBox(height: 8),
                _infoCard(
                  context,
                  "Simpul Pantau",
                  data?.jumlahPantau?.toString() ?? '-',
                  Colors.grey.shade400,
                  AppColors.blackColor,
                ),
                SizedBox(height: 8),
                _infoCard(
                  context,
                  "Jumlah Melapor",
                  data?.simpulMelapor?.toString() ?? '-',
                  color,
                  AppColors.whiteColor,
                ),
              ],
            ),
          )
        ],
      );
    }
  }

  // Kartu info ukuran kompak untuk tampilan grid pada Z Fold
  Widget _smallInfoCard(BuildContext context, String title, String value, Color color, Color textColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Get.textTheme.bodySmall!.copyWith(
            fontWeight: FontWeight.w600, 
            fontSize: 10,
          ),
        ),
        SizedBox(height: 2),
        Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
          alignment: Alignment.center,
          child: Text(
            value,
            style: Get.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: textColor,
            ),
          ),
        ),
      ],
    );
  }

  // Widget infoCard original
  Widget _infoCard(BuildContext context, String title, String value, Color color, Color textColor) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Column(
      children: [
        SizedBox(
          width: isSmallScreen ? 300 : 300,
          child: Text(
            title,
            style: Get.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w600, fontSize: isUnfolded ? 14 : (isSmallScreen ? 10 : 14),
            ),
          ),
        ),
        SizedBox(height: Sizes.s6),
        Container(
          width: isUnfolded ? Get.width : isSmallScreen ? 200 : Get.width,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: Text(
            value,
            style: Get.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: isUnfolded ? 14 : (isSmallScreen ? 10 : 17),
              color: textColor,
            ),
          ),
        ),
      ],
    );
  }
}

class ChartData {
  final String label;
  final double value;
  final Color color;

  ChartData(this.label, this.value, this.color);
}
