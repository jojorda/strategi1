import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';
import 'package:strategi_hub_app/domain/entities/od_data.dart' as od;
import 'package:strategi_hub_app/modules/penyeberangan/controllers/penyeberangan_controller.dart';
import 'package:strategi_hub_app/modules/penyeberangan/od/views/detail_penyeberangan_od_page.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PenyeberanganOdPage extends GetView<PenyeberanganController> {
  const PenyeberanganOdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              HeaderFilter(
                isRutin: controller.isRoutine,
                onSelectedDate: controller.updateFilterDate,
                rangeGroupvalue: controller.selectedFilter,
                selectedDateRange: controller.selectedDateRange,
                listEvent: controller.eventList,
                selectedEvent: controller.currentEvent,
                eventType: controller.eventType,
                onSelectedEvent: controller.handleOnSelectedEvent,
                updateEventType: (value) {
                  controller.eventType.value = value;
                },
              ),
              SizedBox(height: Sizes.s10),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    controller.fetchData(true);
                  },
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Sizes.s6),
                        border: Border.all(color: AppColors.lightGreyColor),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: Sizes.s14,
                        vertical: Sizes.s10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '10 Origin Destination Terpadat',
                                  style: Get.textTheme.labelLarge!.copyWith(
                                      fontSize: isUnfolded
                                          ? 14
                                          : (isSmallScreen ? 11 : 14)),
                                ),
                              ),
                              SvgPicture.asset(
                                AssetConstant.sort,
                                height: Sizes.s18,
                                width: Sizes.s18,
                              ),
                              SizedBox(width: Sizes.s8),
                              Obx(() => Text(
                                    controller.isOdChart.value
                                        ? 'Chart'
                                        : 'Value',
                                    style: Get.textTheme.titleSmall!.copyWith(
                                        fontSize: isUnfolded
                                            ? 14
                                            : (isSmallScreen ? 12 : 14)),
                                  )),
                              Container(
                                height: Sizes.s20,
                                width: Sizes.s30,
                                margin: EdgeInsets.only(left: Sizes.s4),
                                alignment: Alignment.center,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Obx(() => CupertinoSwitch(
                                        value: controller.isOdChart.value,
                                        onChanged: (val) {
                                          controller.isOdChart.value = val;
                                        },
                                        activeTrackColor:
                                            AppColors.gradientEndColor,
                                      )),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: Sizes.s8),
                          Obx(
                            () => Row(
                              children: [
                                CustomCheckboxTile(
                                  label: 'Dom',
                                  value: controller.domOdValue.value,
                                  onChanged: (val) {
                                    controller.domOdValue.value = val;
                                  },
                                ),
                                SizedBox(width: Sizes.s10),
                                CustomCheckboxTile(
                                  label: 'Int',
                                  value: controller.intOdValue.value,
                                  onChanged: (val) {
                                    controller.intOdValue.value = val;
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: Sizes.s8),
                          Text(
                            'Penumpang',
                            style: Get.textTheme.labelLarge!.copyWith(
                                fontSize: isUnfolded
                                    ? 14
                                    : (isSmallScreen ? 14 : 14)),
                          ),
                          SizedBox(height: Sizes.s4),
                          TextFormField(
                            onChanged: (value) => controller.searchOd(value),
                            style: Get.textTheme.labelLarge!.copyWith(
                              fontSize: isUnfolded ? 14 : (isSmallScreen ? 10 : 14),
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: Sizes.s0, horizontal: Sizes.s14),
                              hintText: 'Cari Origin - Destination..',
                              hintStyle: Get.textTheme.labelLarge!.copyWith(
                                  fontSize: isUnfolded ? 14 : (isSmallScreen ? 10 : 14),
                                  color: AppColors.lightGreyColor),
                              suffixIcon: Icon(
                                IconlyLight.search,
                                size: Sizes.s18,
                                color: AppColors.lightGreyColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(Sizes.s8),
                                borderSide:
                                    BorderSide(color: AppColors.outlineColor),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.s10),
                          Obx(() {
                            final data =
                                controller.currentListOdData.value?.data ?? [];
                            final chartData = data
                              ..sort((a, b) => a.total.compareTo(b.total));

                            if (chartData.isEmpty) {
                              return Center(
                                child: Text(
                                  'Data tidak tersedia',
                                  style: Get.textTheme.labelLarge,
                                ),
                              );
                            }

                            return controller.isOdChart.value
                                ? OdChart(chartData: chartData)
                                : OdTable(chartData: data);
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class OdTable extends StatelessWidget {
  final List<od.OdChartData> chartData;

  const OdTable({
    super.key,
    this.chartData = const [],
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
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
                  style: Get.textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                ),
              ),
              Expanded(
                  child: Text('Simpul',
                      style: Get.textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              isUnfolded ? 14 : (isSmallScreen ? 12 : 14)))),
              SizedBox(width: Sizes.s4),
              SizedBox(
                width: Get.width * 0.15,
                child: SvgPicture.asset(AssetConstant.users,
                    height: isUnfolded
                        ? Sizes.s14
                        : (isSmallScreen ? Sizes.s11 : Sizes.s14),
                    width: isUnfolded
                        ? Sizes.s14
                        : (isSmallScreen ? 12 : Sizes.s14)),
              ),
              SizedBox(width: Sizes.s4),
              SizedBox(
                width: Get.width * 0.15,
                child: SvgPicture.asset(AssetConstant.boatIcon,
                    height: isUnfolded
                        ? Sizes.s14
                        : (isSmallScreen ? Sizes.s11 : Sizes.s14),
                    width: isUnfolded
                        ? Sizes.s14
                        : (isSmallScreen ? 12 : Sizes.s14)),
              ),
            ],
          ),
        ),
        Column(
          children: chartData.asMap().entries.map(
            (entry) {
              int index = entry.key;
              var data = entry.value;

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
                        style: Get.textTheme.labelMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize:
                                isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(chartData[index].origin ?? '',
                              style: Get.textTheme.labelMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: isUnfolded
                                      ? 14
                                      : (isSmallScreen ? 12 : 14))),
                          Text(chartData[index].destination ?? '',
                              style: Get.textTheme.labelMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: isUnfolded
                                      ? 14
                                      : (isSmallScreen ? 12 : 14))),
                        ],
                      ),
                    ),
                    SizedBox(width: Sizes.s8),
                    SizedBox(
                      width: Get.width * 0.15,
                      child: Column(
                        children: [
                          Text(chartData[index].arrival?.toDotSeparated() ?? '',
                              textAlign: TextAlign.center,
                              style: Get.textTheme.labelMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: isUnfolded
                                      ? 14
                                      : (isSmallScreen ? 12 : 14))),
                          Text(
                              chartData[index].departure?.toDotSeparated() ??
                                  '',
                              textAlign: TextAlign.center,
                              style: Get.textTheme.labelMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: isUnfolded
                                      ? 14
                                      : (isSmallScreen ? 12 : 14))),
                        ],
                      ),
                    ),
                    SizedBox(width: Sizes.s4),
                    SizedBox(
                      width: Get.width * 0.15,
                      child: Column(
                        children: [
                          Text(
                              chartData[index]
                                      .vehicleArrival
                                      ?.toDotSeparated() ??
                                  '',
                              textAlign: TextAlign.center,
                              style: Get.textTheme.labelMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: isUnfolded
                                      ? 14
                                      : (isSmallScreen ? 12 : 14))),
                          Text(
                              chartData[index]
                                      .vehicleDeparture
                                      ?.toDotSeparated() ??
                                  '',
                              textAlign: TextAlign.center,
                              style: Get.textTheme.labelMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: isUnfolded
                                      ? 14
                                      : (isSmallScreen ? 12 : 14))),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        )
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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        children: [
          Container(
            height: isUnfolded ? Sizes.s18 : (isSmallScreen ? Sizes.s12 : Sizes.s18),
            width: isUnfolded ? Sizes.s18 : (isSmallScreen ? Sizes.s12 : Sizes.s18),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(Sizes.s5)),
            child: value == true
                ? Center(
                    child: Icon(
                      Icons.check,
                      size: isUnfolded ? Sizes.s16 : (isSmallScreen ? Sizes.s12 : Sizes.s16),
                      color: AppColors.primaryColor,
                    ),
                  )
                : SizedBox(),
          ),
          SizedBox(width: Sizes.s4),
          Text(
            label,
            style: Get.textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
                fontSize: isUnfolded ? 14 : (isSmallScreen ? 10 : 14)),
          ),
        ],
      ),
    );
  }
}

class OdChart extends GetView<PenyeberanganController> {
  final List<od.OdChartData> chartData;

  const OdChart({
    super.key,
    this.chartData = const [],
  });

  @override
  Widget build(BuildContext context) {
    var highestValue = chartData
        .map((e) => (e.total))
        .fold<int>(0, (prev, element) => max(prev, element))
        .toDouble();

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;

    return SingleChildScrollView(
      child: SizedBox(
        height: Get.height * 0.45,
        child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          primaryXAxis: CategoryAxis(
            labelStyle: Get.textTheme.bodySmall!.copyWith(
              fontSize: isUnfolded ? 10 : (isSmallScreen ? 10 : 8),
            ),
            maximumLabelWidth: Sizes.s60,
            axisLine: AxisLine(width: 0),
            majorGridLines: MajorGridLines(width: 0),
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
            maximum: chartData.isNotEmpty ? highestValue : 0,
            interval: highestValue / 5,
            labelStyle: Get.textTheme.bodySmall!.copyWith(
              fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 8),
            ),
            labelIntersectAction: AxisLabelIntersectAction.wrap,
            axisLine: AxisLine(width: 0),
            majorGridLines: MajorGridLines(
              color: Get.theme.colorScheme.inverseSurface.withOpacity(0.5),
            ),
          ),
          series: <BarSeries<od.OdChartData, String>>[
            BarSeries<od.OdChartData, String>(
              dataSource: chartData,
              onPointTap: (data) {
                Get.toNamed(
                  DetailPenyeberanganOdPage.routeName,
                  arguments: od.OdDetailArgument(
                    isRoutine: controller.isRoutine.value,
                    event: controller.currentEvent.value,
                    tanggalAwal1: controller.selectedRoutineRange.value[0],
                    tanggalAkhir1: controller.selectedRoutineRange.value[1],
                    idOrigin: chartData[data.pointIndex!].idOrigin,
                    idDestination: chartData[data.pointIndex!].idDestination,
                    origin: chartData[data.pointIndex!].origin,
                    destination: chartData[data.pointIndex!].destination,
                    selectedFilter: controller.selectedFilter.value,
                    originCityName: chartData[data.pointIndex!].originCity,
                    destinationCityName:
                        chartData[data.pointIndex!].destinationCity,
                    originType: chartData[data.pointIndex!].originType,
                    destinationType:
                        chartData[data.pointIndex!].destinationType,
                  ),
                );
              },
              xValueMapper: (od.OdChartData odValue, _) =>
                  odValue.combinedLabel,
              yValueMapper: (od.OdChartData odValue, _) => odValue.total,
              color: AppColors.chartColor,
            )
          ],
        ),
      ),
    );
  }
}
