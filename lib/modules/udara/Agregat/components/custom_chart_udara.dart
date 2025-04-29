import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/home/views/home_page.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomChartUdara extends StatelessWidget {
  final List<SalesData> dataSource;
  final Color? color;
  const CustomChartUdara({super.key, required this.dataSource, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.12,
      margin: EdgeInsets.only(left: Sizes.s30),
      child: SfCartesianChart(
        margin: EdgeInsets.zero,
        plotAreaBorderColor: Colors.transparent,
        plotAreaBorderWidth: Sizes.s0,
        primaryXAxis: CategoryAxis(
          labelStyle: Get.textTheme.bodySmall!.copyWith(
            fontSize: FontSizes.s10,
          ),
          labelAlignment: LabelAlignment.center,
          maximumLabelWidth: Sizes.s120,
          axisLine: AxisLine(width: 0),
          majorGridLines: MajorGridLines(width: 0),
          labelIntersectAction: AxisLabelIntersectAction.wrap,
          majorTickLines: MajorTickLines(color: Colors.transparent),
          // maximumLabelWidth: Sizes.s100,
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          plotOffset: 0,
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
          maximum: 2800,
          majorTickLines: MajorTickLines(color: Colors.transparent),
          labelIntersectAction: AxisLabelIntersectAction.wrap,
          axisLine: AxisLine(width: 0),
          maximumLabelWidth: 1,
          labelStyle: Get.textTheme.bodyLarge!.copyWith(fontSize: FontSizes.s0),
          majorGridLines: MajorGridLines(
            width: 0,
          ),
        ),
        series: <BarSeries<SalesData, String>>[
          BarSeries<SalesData, String>(
              dataSource: dataSource,
              xValueMapper: (SalesData sales, _) => sales.month,
              yValueMapper: (SalesData sales, _) => sales.sales1,
              color: color ?? AppColors.chartColor,
              dataLabelMapper: (SalesData data, _) => data.sales1.toString(),
              dataLabelSettings: DataLabelSettings(
                isVisible: true,
                labelAlignment: ChartDataLabelAlignment.outer,
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
                offset: Offset(10, 0),
              ))
        ],
      ),
    );
  }
}
