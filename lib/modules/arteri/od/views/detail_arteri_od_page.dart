import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/utils/extentions/string_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DetailArteriOdPage extends StatelessWidget {
  static String routeName = '/detail-arteri-od-page';
  const DetailArteriOdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'DETAIL OD',
      body: Padding(
        padding: EdgeInsets.fromLTRB(Sizes.s20, Sizes.s10, Sizes.s20, Sizes.s0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Origin | Pulo Gadung',
              style: Get.textTheme.bodyMedium!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: Sizes.s4),
            Text(
              'TTA  |  Kota Jakarta Timur',
              style: Get.textTheme.labelMedium!.copyWith(
                  fontWeight: FontWeight.w400, fontSize: FontSizes.s10),
            ),
            SizedBox(height: Sizes.s10),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.s4),
                    border: Border.all(color: AppColors.outlineColor)),
                padding: EdgeInsets.all(Sizes.s10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mobilitas Penumpang',
                      style: Get.textTheme.labelMedium,
                    ),
                    SizedBox(height: Sizes.s10),
                    LineChartWidget(),
                  ],
                )),
            SizedBox(height: Sizes.s20),
            Text(
              'Destination | Pulo Gadung',
              style: Get.textTheme.bodyMedium!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: Sizes.s4),
            Text(
              'TTA  |  Kota Jakarta Timur',
              style: Get.textTheme.labelMedium!.copyWith(
                  fontWeight: FontWeight.w400, fontSize: FontSizes.s10),
            ),
            SizedBox(height: Sizes.s10),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.s4),
                    border: Border.all(color: AppColors.outlineColor)),
                padding: EdgeInsets.all(Sizes.s10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mobilitas Penumpang',
                      style: Get.textTheme.labelMedium,
                    ),
                    SizedBox(height: Sizes.s10),
                    LineChartWidget(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class LineChartWidget extends StatefulWidget {
  const LineChartWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LineChartWidgetState createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  List<ChartData> berangkatData = [];
  List<ChartData> tibaData = [];

  @override
  void initState() {
    super.initState();
    _generateData();
  }

  void _generateData() {
    berangkatData = [];

    tibaData = [];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.s200,
      child: SfCartesianChart(
        plotAreaBorderColor: Colors.transparent,
        primaryXAxis: CategoryAxis(
          majorGridLines: const MajorGridLines(width: 0),
          labelStyle: Get.textTheme.bodySmall!.copyWith(
            fontSize: FontSizes.s7,
          ),
          interval: 1,
        ),
        primaryYAxis: NumericAxis(
          minimum: 0,
          maximum: 600,
          interval: 100,
          majorGridLines: MajorGridLines(
            width: Sizes.s1,
            color: AppColors.lightGreyColor,
          ),
          labelStyle: Get.textTheme.bodySmall!.copyWith(
            fontSize: FontSizes.s7,
          ),
          labelIntersectAction: AxisLabelIntersectAction.wrap,
          axisLine: AxisLine(width: 0),
        ),
        series: <CartesianSeries>[
          LineSeries<ChartData, String>(
            name: "Berangkat",
            dataSource: berangkatData,
            xValueMapper: (ChartData data, _) => '(${data.label.chartYLabel})',
            yValueMapper: (ChartData data, _) => data.value,
            color: AppColors.chartColor,
            markerSettings: const MarkerSettings(
              isVisible: true,
              color: AppColors.chartColor,
            ),
          ),
          LineSeries<ChartData, String>(
            name: "Tiba",
            dataSource: tibaData,
            xValueMapper: (ChartData data, _) => '(${data.label.chartYLabel})',
            yValueMapper: (ChartData data, _) => data.value,
            color: AppColors.violetColor,
            markerSettings: const MarkerSettings(
                isVisible: true, color: AppColors.violetColor),
          ),
        ],
      ),
    );
  }
}
