import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/arteri/od/controllers/jalan_od_controller.dart';
import 'package:strategi_hub_app/modules/arteri/od/views/detail_arteri_od_page.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ArteriOdPage extends StatelessWidget {
  const ArteriOdPage({super.key});

  @override
  Widget build(BuildContext context) {
    JalanOdController controller = Get.put(JalanOdController());
    return Column(
      children: [
        HeaderFilter(
          isRutin: controller.isRutin,
          onSelectedDate: controller.formatDateRanges,
          rangeGroupvalue: controller.groupValue,
          selectedDateRange: controller.selectedDateRange,
        ),
        SizedBox(height: Sizes.s10),
        Expanded(
            child: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.s6),
              border: Border.all(color: AppColors.lightGreyColor)),
          padding:
              EdgeInsets.symmetric(horizontal: Sizes.s14, vertical: Sizes.s10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '10 Origin Destination Terpadat',
                      style: Get.textTheme.labelLarge,
                    ),
                  ),
                  SvgPicture.asset(
                    AssetConstant.sort,
                    height: Sizes.s18,
                    width: Sizes.s18,
                  ),
                  SizedBox(width: Sizes.s8),
                  Obx(() => Text(
                        controller.isChart.value ? 'Chart' : 'Value',
                        style: Get.textTheme.titleSmall,
                      )),
                  Container(
                    height: Sizes.s20,
                    width: Sizes.s30,
                    margin: EdgeInsets.only(left: Sizes.s4),
                    alignment: Alignment.center,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Obx(() => CupertinoSwitch(
                            value: controller.isChart.value,
                            onChanged: (val) {
                              controller.isChart.value = val;
                            },
                            activeTrackColor: AppColors.gradientEndColor,
                          )),
                    ),
                  )
                ],
              ),
              SizedBox(height: Sizes.s8),
              Obx(() => Row(
                    children: [
                      CustomCheckboxTile(
                        label: 'Dom',
                        value: controller.domValue.value,
                        onChanged: (val) {
                          controller.domValue.value = val;
                        },
                      ),
                      SizedBox(width: Sizes.s10),
                      CustomCheckboxTile(
                        label: 'Int',
                        value: controller.intValue.value,
                        onChanged: (val) {
                          controller.intValue.value = val;
                        },
                      ),
                    ],
                  )),
              SizedBox(height: Sizes.s8),
              Text(
                'Penumpang',
                style: Get.textTheme.labelLarge,
              ),
              SizedBox(height: Sizes.s4),
              TextFormField(
                style: Get.textTheme.labelLarge!.copyWith(
                  fontSize: Sizes.s12,
                ),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: Sizes.s0, horizontal: Sizes.s14),
                    hintText: 'Cari Origin - Destination..',
                    hintStyle: Get.textTheme.labelLarge!.copyWith(
                        fontSize: Sizes.s12, color: AppColors.lightGreyColor),
                    suffixIcon: Icon(
                      IconlyLight.search,
                      size: Sizes.s18,
                      color: AppColors.lightGreyColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Sizes.s8),
                        borderSide: BorderSide(color: AppColors.outlineColor))),
              ),
              SizedBox(height: Sizes.s10),
              Expanded(
                  child: Obx(
                      () => controller.isChart.value ? OdChart() : OdTable()))
            ],
          ),
        ))
      ],
    );
  }
}

class OdData {
  OdData(
    this.origin,
    this.destination,
    this.originCount,
    this.destinationCount,
  );
  final String origin;
  final String destination;
  final double originCount;
  final double destinationCount;

  // Getter untuk menggabungkan kedua label dengan baris baru
  String get combinedLabel => '$origin\n$destination';
}

class OdTable extends StatelessWidget {
  const OdTable({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OdData> chartData = [
      OdData('Merak', 'Kp. Rambutan', 700, 15),
      OdData('Sumberanyar', 'Bungurasih', 800, 25),
      OdData('Rajabasa', 'Merak', 900, 35),
      OdData('Terboyo', 'Giwangan', 1000, 45),
      OdData('Pasar Minggu', 'Pulo Gebang', 1100, 55),
      OdData('Lebak Bulus', 'Kp. Rambutan', 1300, 55),
      OdData('Tanjung Priok', 'Kp. Rambutan', 1300, 55),
      OdData('Kalideres', 'Kp. Rambutan', 1400, 55),
      OdData('Kp. Rambutan', 'Pulogebang', 1400, 55),
      OdData('Pulogadung', 'Kp. Rambutan', 1500, 55),
    ];

    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: Sizes.s8),
          color: AppColors.primaryContainerColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width * 0.09,
                child: Text(
                  'No',
                  textAlign: TextAlign.center,
                  style: Get.textTheme.titleSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  child: Text('Simpul',
                      style: Get.textTheme.titleSmall!
                          .copyWith(fontWeight: FontWeight.bold))),
              SizedBox(width: Sizes.s4),
              SizedBox(
                width: Get.width * 0.15,
                child: SvgPicture.asset(AssetConstant.users),
              ),
              SizedBox(width: Sizes.s4),
              SizedBox(
                width: Get.width * 0.15,
                child: SvgPicture.asset(AssetConstant.boatIcon),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: chartData.length,
              itemBuilder: (context, index) {
                bool isOdd = index.isOdd;
                return Container(
                  padding: EdgeInsets.symmetric(vertical: Sizes.s6),
                  color: isOdd
                      ? AppColors.primaryContainerColor
                      : AppColors.whiteColor,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Get.width * 0.09,
                        child: Text(
                          (index + 1).toString(),
                          textAlign: TextAlign.center,
                          style: Get.textTheme.labelMedium!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(chartData[index].origin,
                              style: Get.textTheme.labelMedium!
                                  .copyWith(fontWeight: FontWeight.w400)),
                          Text(chartData[index].destination,
                              style: Get.textTheme.labelMedium!
                                  .copyWith(fontWeight: FontWeight.w400)),
                        ],
                      )),
                      SizedBox(width: Sizes.s8),
                      SizedBox(
                        width: Get.width * 0.15,
                        child: Column(
                          children: [
                            Text(chartData[index].originCount.toString(),
                                textAlign: TextAlign.center,
                                style: Get.textTheme.labelMedium!
                                    .copyWith(fontWeight: FontWeight.w400)),
                            Text(chartData[index].destinationCount.toString(),
                                textAlign: TextAlign.center,
                                style: Get.textTheme.labelMedium!
                                    .copyWith(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      SizedBox(width: Sizes.s4),
                      SizedBox(
                        width: Get.width * 0.15,
                        child: Column(
                          children: [
                            Text(chartData[index].originCount.toString(),
                                textAlign: TextAlign.center,
                                style: Get.textTheme.labelMedium!
                                    .copyWith(fontWeight: FontWeight.w400)),
                            Text(chartData[index].destinationCount.toString(),
                                textAlign: TextAlign.center,
                                style: Get.textTheme.labelMedium!
                                    .copyWith(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}

class CustomCheckboxTile extends StatelessWidget {
  final bool value;
  final String label;
  final Function(bool) onChanged;
  const CustomCheckboxTile(
      {super.key,
      required this.value,
      required this.label,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        children: [
          Container(
            height: Sizes.s18,
            width: Sizes.s18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(Sizes.s5)),
            child: value == true
                ? Center(
                    child: Icon(
                      Icons.check,
                      size: Sizes.s16,
                      color: AppColors.primaryColor,
                    ),
                  )
                : SizedBox(),
          ),
          SizedBox(width: Sizes.s4),
          Text(
            label,
            style: Get.textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.w400, color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}

class OdChart extends StatelessWidget {
  const OdChart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OdData> chartData = [
      OdData('Merak', 'Kp. Rambutan', 700, 15),
      OdData('Sumberanyar', 'Bungurasih', 800, 25),
      OdData('Rajabasa', 'Merak', 900, 35),
      OdData('Terboyo', 'Giwangan', 1000, 45),
      OdData('Pasar Minggu', 'Pulo Gebang', 1100, 55),
      OdData('Lebak Bulus', 'Kp. Rambutan', 1300, 55),
      OdData('Tanjung Priok', 'Kp. Rambutan', 1300, 55),
      OdData('Kalideres', 'Kp. Rambutan', 1400, 55),
      OdData('Kp. Rambutan', 'Pulogebang', 1400, 55),
      OdData('Pulogadung', 'Kp. Rambutan', 1500, 55),
    ];

    return SingleChildScrollView(
      child: SizedBox(
        height: Get.height * 0.45,
        child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          primaryXAxis: CategoryAxis(
            labelStyle: Get.textTheme.bodySmall!.copyWith(
              fontSize: FontSizes.s10,
            ),
            labelAlignment: LabelAlignment.center,
            maximumLabelWidth: Sizes.s80,
            axisLine: AxisLine(width: 0),
            majorGridLines: MajorGridLines(width: 0),
            labelIntersectAction: AxisLabelIntersectAction.wrap,
          ),
          primaryYAxis: NumericAxis(
            axisLabelFormatter: (value) {
              return ChartAxisLabel(
                double.tryParse(value.text)?.toInt().toDotSeparated() ??
                    value.text,
                value.textStyle,
              );
            },
            minimum: 0,
            maximum: 1500,
            interval: 300,
            labelStyle: Get.textTheme.bodySmall!.copyWith(
              fontSize: FontSizes.s7,
            ),
            labelIntersectAction: AxisLabelIntersectAction.wrap,
            axisLine: AxisLine(width: 0),
            majorGridLines: MajorGridLines(
              color: Get.theme.colorScheme.inverseSurface.withOpacity(0.5),
            ),
          ),
          series: <BarSeries<OdData, String>>[
            BarSeries<OdData, String>(
              dataSource: chartData,
              onPointTap: (data) {
                Get.toNamed(DetailArteriOdPage.routeName);
              },
              xValueMapper: (OdData sales, _) => sales.combinedLabel,
              yValueMapper: (OdData sales, _) => sales.originCount,
              color: AppColors.chartColor,
            )
          ],
        ),
      ),
    );
  }
}
