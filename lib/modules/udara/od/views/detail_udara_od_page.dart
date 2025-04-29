import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/enum/od_enum.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/domain/entities/od_data.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';
import 'package:strategi_hub_app/modules/udara/od/controllers/udara_od_detail_controller.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DetailUdaraOdPage extends GetView<UdaraOdDetailController> {
  static String routeName = '/detail-udara-od-page';
  const DetailUdaraOdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return BaseScaffold(
      title: 'DETAIL OD',
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    Sizes.s20, Sizes.s10, Sizes.s20, Sizes.s0),
                child: HeaderFilter(
                  isRutin: controller.isRoutine,
                  onSelectedDate: controller.updateFilterDate,
                  rangeGroupvalue: controller.selectedFilter,
                  selectedDateRange: controller.selectedOdDateRange,
                  listEvent: controller.eventList,
                  selectedEvent: controller.currentEvent,
                  eventType: controller.eventType,
                  onSelectedEvent: (event) {
                    controller.currentEvent.value = event;
                  },
                  updateEventType: (value) {
                    controller.eventType.value = value;
                  },
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        Sizes.s20, Sizes.s10, Sizes.s20, Sizes.s0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Origin | ${controller.origin.value}',
                          style: Get.textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: isUnfolded
                                  ? 14
                                  : (isSmallScreen ? 14 : FontSizes.s12)),
                        ),
                        SizedBox(height: Sizes.s4),
                        Text(
                          controller.originCityName.value.isEmpty
                              ? '-'
                              : controller.originCityName.value,
                          style: Get.textTheme.labelMedium!.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: isUnfolded
                                  ? 14
                                  : (isSmallScreen ? 14 : FontSizes.s12)),
                        ),
                        SizedBox(height: Sizes.s10),
                        _buildMobilitySection(OdEnum.origin, context),
                        SizedBox(height: Sizes.s20),
                        Text(
                          'Destination | ${controller.destination.value}',
                          style: Get.textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: isUnfolded
                                  ? 14
                                  : (isSmallScreen ? 14 : FontSizes.s12)),
                        ),
                        SizedBox(height: Sizes.s4),
                        Text(
                          controller.destinationCityName.value.isEmpty
                              ? '-'
                              : controller.destinationCityName.value,
                          style: Get.textTheme.labelMedium!.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: isUnfolded
                                  ? 14
                                  : (isSmallScreen ? 14 : FontSizes.s12)),
                        ),
                        SizedBox(height: Sizes.s10),
                        _buildMobilitySection(OdEnum.destination, context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Obx(() {
            return Positioned.fill(
              child: Visibility(
                visible: controller.isLoadingOdDetailData.value,
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

  Widget _buildMobilitySection(OdEnum odEnum, BuildContext context) {
    return Obx(() {
      return Stack(
        alignment: Alignment.center,
        children: [
          _buildGraphCard(odEnum, context),
          Visibility(
            visible: !controller.isLoadingOdDetailData.value &&
                odEnum == OdEnum.origin &&
                controller.currentTrafficDataOrigin.value != null,
            child: _buildNavigationArrows(odEnum),
          ),
          Visibility(
            visible: !controller.isLoadingOdDetailData.value &&
                odEnum == OdEnum.destination &&
                controller.currentTrafficDataDestination.value != null,
            child: _buildNavigationArrows(odEnum),
          ),
        ],
      );
    });
  }

  Widget _buildNavigationArrows(OdEnum odEnum) {
    return Obx(() {
      final showMobilitas = odEnum == OdEnum.origin
          ? controller.showMobilitasPenumpangOrigin.value
          : controller.showMobilitasPenumpangDestination.value;
      if (!showMobilitas) {
        return _buildArrow(
          left: 8,
          asset: 'assets/icons/slidekiri.svg',
          onTap: () {
            if (odEnum == OdEnum.origin) {
              controller.showMobilitasPenumpangOrigin.value = true;
              controller.showVehicleDataOrigin.value = false;
            } else {
              controller.showMobilitasPenumpangDestination.value = true;
              controller.showVehicleDataDestination.value = false;
            }
          },
        );
      }
      return _buildArrow(
        right: 9,
        asset: 'assets/icons/slidekanan.svg',
        onTap: () {
          if (odEnum == OdEnum.origin) {
            controller.showMobilitasPenumpangOrigin.value = false;
            controller.showVehicleDataOrigin.value = true;
          } else {
            controller.showMobilitasPenumpangDestination.value = false;
            controller.showVehicleDataDestination.value = true;
          }
        },
      );
    });
  }

  Widget _buildArrow({
    double? left,
    double? right,
    required String asset,
    required VoidCallback onTap,
  }) {
    return Positioned(
      left: left,
      right: right,
      child: GestureDetector(
        onTap: onTap,
        child: SvgPicture.asset(
          asset,
          height: 27,
          width: 27,
        ),
      ),
    );
  }

  Widget _buildGraphCard(OdEnum odEnum, BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Obx(() {
      final title = (odEnum == OdEnum.origin
              ? controller.showMobilitasPenumpangOrigin.value
              : controller.showMobilitasPenumpangDestination.value)
          ? 'Mobilitas Penumpang'
          : 'Mobilitas Sarana';

      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 1),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
            width: 1.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                title,
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize:
                      isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s12),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildGraphContent(odEnum, context),
          ],
        ),
      );
    });
  }

  Widget _buildGraphContent(OdEnum odEnum, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(vertical: 8),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildChartBar(odEnum),
            _buildGraphLegend(odEnum, context),
          ],
        ),
      ),
    );
  }

  Widget _buildGraphLegend(OdEnum odEnum, BuildContext context) {
    return Obx(() {
      final trafficData = odEnum == OdEnum.origin
          ? controller.currentTrafficDataOrigin.value
          : controller.currentTrafficDataDestination.value;
      if (trafficData == null) return const SizedBox.shrink();

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLegendItem(
            context: context,
            isVehicle: odEnum == OdEnum.origin
                ? controller.showVehicleDataOrigin.value
                : controller.showVehicleDataDestination.value,
            color: AppColors.secondaryColor,
            value: _calculateTotal(
              odEnum == OdEnum.origin
                  ? (odEnum == OdEnum.origin
                          ? controller.showVehicleDataOrigin.value
                          : controller.showVehicleDataDestination.value)
                      ? trafficData.vehicleDeparture
                      : trafficData.departure
                  : controller.showVehicleDataDestination.value
                      ? trafficData.vehicleDeparture
                      : trafficData.departure,
            ),
            label: 'Berangkat',
          ),
          const SizedBox(width: 20),
          _buildLegendItem(
            context: context,
            isVehicle: odEnum == OdEnum.origin
                ? controller.showVehicleDataOrigin.value
                : controller.showVehicleDataDestination.value,
            color: AppColors.violetColor,
            value: _calculateTotal(
              odEnum == OdEnum.origin
                  ? (controller.showVehicleDataOrigin.value
                      ? trafficData.vehicleArrival
                      : trafficData.arrival)
                  : (controller.showVehicleDataDestination.value
                      ? trafficData.vehicleArrival
                      : trafficData.arrival),
            ),
            label: 'Tiba',
          ),
        ],
      );
    });
  }

  String _calculateTotal(List<ChartData>? data) {
    if (data == null || data.isEmpty) return '0';
    return data
        .map((e) => e.value)
        .reduce((a, b) => a + b)
        .toInt()
        .toDotSeparated();
  }

  Widget _buildLegendItem({
    required BuildContext context,
    required bool isVehicle,
    required Color color,
    required String value,
    required String label,
  }) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Row(
      children: [
        isVehicle
            ? Icon(Icons.flight, size: 17, color: color)
            : SvgPicture.asset(
                AssetConstant.userGroup,
                width: 14,
                height: 14,
                color: color,
              ),
        const SizedBox(width: 4),
        Text(
          value,
          style: Get.textTheme.labelMedium!.copyWith(
            color: color,
            fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s10),
          ),
        ),
        const SizedBox(width: 2),
        Text(
          label,
          style: Get.textTheme.labelMedium!.copyWith(
            fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s10),
          ),
        ),
      ],
    );
  }

  Widget _buildChartBar(OdEnum odEnum) {
    return Obx(() {
      final trafficData = odEnum == OdEnum.origin
          ? controller.currentTrafficDataOrigin.value
          : controller.currentTrafficDataDestination.value;

      if (trafficData == null) {
        return SizedBox(
          height: 200,
          child: Center(
            child: Text('Memuat data'),
          ),
        );
      }

      final maxValue = _calculateChartMaxValue(trafficData, odEnum);

      return SizedBox(
        height: 200,
        child: SfCartesianChart(
          plotAreaBorderColor: Colors.transparent,
          primaryXAxis: _buildChartXAxis(),
          primaryYAxis: _buildChartYAxis(maxValue),
          series: _buildChartSeries(trafficData, odEnum),
        ),
      );
    });
  }

  double _calculateChartMaxValue(TrafficData trafficData, OdEnum odEnum) {
    List<double> departureValues;
    List<double> arrivalValues;

    if (odEnum == OdEnum.origin && controller.showVehicleDataOrigin.value ||
        odEnum == OdEnum.destination &&
            controller.showVehicleDataDestination.value) {
      departureValues =
          trafficData.vehicleDeparture.map((e) => e.value).toList();
      arrivalValues = trafficData.vehicleArrival.map((e) => e.value).toList();
    } else {
      departureValues = trafficData.departure.map((e) => e.value).toList();
      arrivalValues = trafficData.arrival.map((e) => e.value).toList();
    }

    final maxDeparture =
        departureValues.isNotEmpty ? departureValues.fold(1.0, max) : 1;
    final maxArrival =
        arrivalValues.isNotEmpty ? arrivalValues.fold(1.0, max) : 1;
    return max(maxDeparture, maxArrival).toDouble();
  }

  CategoryAxis _buildChartXAxis() {
    return CategoryAxis(
      majorGridLines: const MajorGridLines(width: 0),
      labelStyle: Get.textTheme.bodySmall!.copyWith(
        fontSize: 7,
      ),
      interval: 1,
    );
  }

  NumericAxis _buildChartYAxis(double maxValue) {
    return NumericAxis(
      minimum: 0,
      maximum: maxValue.roundUp50k(),
      interval: (maxValue.roundUp50k() / 5),
      majorGridLines: MajorGridLines(
        width: 1,
        color: AppColors.lightGreyColor,
      ),
      labelStyle: Get.textTheme.bodySmall!.copyWith(
        fontSize: 7,
      ),
      labelIntersectAction: AxisLabelIntersectAction.wrap,
      axisLine: const AxisLine(width: 0),
    );
  }

  List<CartesianSeries<ChartData, String>> _buildChartSeries(
      dynamic trafficData, OdEnum odEnum) {
    return <CartesianSeries<ChartData, String>>[
      LineSeries<ChartData, String>(
        name: "Berangkat",
        dataSource: odEnum == OdEnum.origin
            ? (controller.showVehicleDataOrigin.value
                ? trafficData.vehicleDeparture
                : trafficData.departure)
            : (controller.showVehicleDataDestination.value
                ? trafficData.vehicleDeparture
                : trafficData.departure),
        xValueMapper: (ChartData data, _) => data.label,
        yValueMapper: (ChartData data, _) => data.value,
        color: AppColors.chartColor,
        markerSettings: const MarkerSettings(
          isVisible: true,
          color: AppColors.chartColor,
        ),
      ),
      LineSeries<ChartData, String>(
        name: "Tiba",
        dataSource: odEnum == OdEnum.origin
            ? (controller.showVehicleDataOrigin.value
                ? trafficData.vehicleArrival
                : trafficData.arrival)
            : (controller.showVehicleDataDestination.value
                ? trafficData.vehicleArrival
                : trafficData.arrival),
        xValueMapper: (ChartData data, _) => data.label,
        yValueMapper: (ChartData data, _) => data.value,
        color: AppColors.violetColor,
        markerSettings: const MarkerSettings(
          isVisible: true,
          color: AppColors.violetColor,
        ),
      ),
    ];
  }
}
