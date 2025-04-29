import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomLineChart extends StatefulWidget {
  final int indexChart;
  const CustomLineChart({super.key, required this.indexChart});

  @override
  // ignore: library_private_types_in_public_api
  _CustomLineChartState createState() => _CustomLineChartState();
}

class ChartData {
  final int hour;
  final int value;

  ChartData(this.hour, this.value);
}

class _CustomLineChartState extends State<CustomLineChart> {
  List<ChartData> berangkatData = [];
  List<ChartData> tibaData = [];

  @override
  void initState() {
    super.initState();
    _generateData();
  }

  void _generateData() {
    berangkatData = [
      ChartData(1, 10),
      ChartData(2, 20),
      ChartData(3, 50),
      ChartData(4, 80),
      ChartData(5, 120),
      ChartData(6, 150),
      ChartData(7, 200),
      ChartData(8, 250),
      ChartData(9, 280),
      ChartData(10, 260),
      ChartData(11, 230),
      ChartData(12, 200),
      ChartData(13, 150),
      ChartData(14, 120),
      ChartData(15, 100),
      ChartData(16, 90),
      ChartData(17, 80),
      ChartData(18, 70),
      ChartData(19, 60),
      ChartData(20, 70),
      ChartData(21, 80),
      ChartData(22, 90),
      ChartData(23, 100),
      ChartData(24, 110),
    ];

    tibaData = [
      ChartData(1, 70),
      ChartData(2, 80),
      ChartData(3, 85),
      ChartData(4, 90),
      ChartData(5, 130),
      ChartData(6, 170),
      ChartData(7, 220),
      ChartData(8, 270),
      ChartData(9, 300),
      ChartData(10, 280),
      ChartData(11, 250),
      ChartData(12, 220),
      ChartData(13, 180),
      ChartData(14, 140),
      ChartData(15, 110),
      ChartData(16, 100),
      ChartData(17, 90),
      ChartData(18, 80),
      ChartData(19, 70),
      ChartData(20, 80),
      ChartData(21, 90),
      ChartData(22, 100),
      ChartData(23, 110),
      ChartData(24, 120),
    ];
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
          if (widget.indexChart == 0)
            LineSeries<ChartData, int>(
              name: "Berangkat",
              dataSource: berangkatData,
              xValueMapper: (ChartData data, _) => data.hour,
              yValueMapper: (ChartData data, _) => data.value,
              color: AppColors.chartColor,
              markerSettings: MarkerSettings(
                width: Sizes.s4,
                height: Sizes.s4,
                isVisible: true,
                color: AppColors.chartColor,
              ),
            ),
          if (widget.indexChart == 1)
            LineSeries<ChartData, int>(
              name: "Tiba",
              dataSource: tibaData,
              xValueMapper: (ChartData data, _) => data.hour,
              yValueMapper: (ChartData data, _) => data.value,
              color: AppColors.violetColor,
              markerSettings: MarkerSettings(
                  width: Sizes.s4,
                  height: Sizes.s4,
                  isVisible: true,
                  color: AppColors.violetColor),
            ),
        ],
      ),
    );
  }
}
