import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';

class BarChart extends StatefulWidget {
  final List<AggregateChartData> chartData;
  final double maxValue;
  final bool showAlternateAggregateData;
  final Color chartColor;

  BarChart({required this.chartData, required this.maxValue, required this.showAlternateAggregateData, required this.chartColor});

  @override
  _BarChartState createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  @override
  Widget build(BuildContext context) {
    final sortedData = widget.chartData.map((data) {
      final value = widget.showAlternateAggregateData
          ? data.vehicleDeparture ?? 0
          : data.vehicleArrival ?? 0;
      final rate = widget.maxValue > 0 ? value.toDouble() / widget.maxValue : 0.0;
      return ChartLine(
        title: data.name ?? 'Unknown',
        rate: rate > 0 ? rate : 0.01,
        number: value.toInt(),
        color: widget.chartColor,
      );
    }).toList();

    sortedData.sort((a, b) => (b.number ?? 0).compareTo(a.number ?? 0));

    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: sortedData,
      ),
    );
  }
}

class ChartLine extends StatelessWidget {
  const ChartLine({
    Key? key,
    required this.rate,
    required this.title,
    this.number,
    required this.color,
  })  : assert(title != null),
        assert(rate != null),
        assert(rate > 0),
        assert(rate <= 1),
        super(key: key);

  final double rate;
  final String title;
  final int? number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenHeight = MediaQuery.of(context).size.height;
      final screenWidth = MediaQuery.of(context).size.width;
      final isSmallScreen = screenHeight < 700 || screenWidth < 380;
      final isUnfolded = screenWidth > 600;
      final lineWidget = constraints.maxWidth * rate;
      return Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(minWidth: lineWidget),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: isUnfolded ? 12 : (isSmallScreen ? 10 : 12),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  color: color,
                  height: 24,
                  width: lineWidget,
                ),
                if (number != null)
                  Positioned(
                    left: 5,
                    top: 4,
                    child: Text(
                      number.toString(),
                      style: TextStyle(
                        fontSize: isUnfolded ? 10 : (isSmallScreen ? 9 : 7),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      );
    });
  }
}