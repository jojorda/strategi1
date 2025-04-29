import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/empty_state.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/utils/extentions/string_extentions.dart';

import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/modules/tol/controllers/tol_controller.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';
import 'package:strategi_hub_app/components/BarChart/BarChart.dart';

class TolAgregat extends GetView<TolController> {
  static const routeName = '/aggregate';
  const TolAgregat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () async {
              controller.fetchData(true);
            },
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: Column(
                      children: [
                        HeaderFilter(
                          isRutin: controller.isRoutine,
                          onSelectedDate: controller.updateFilterDate,
                          rangeGroupvalue: controller.selectedFilter,
                          selectedDateRange: controller.selectedDateRange,
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
                        const SizedBox(height: 12),
                        _buildMobilitySection(context),
                        const SizedBox(height: 12),
                        _buildTopNodesSection(context),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Obx(() {
            return Positioned.fill(
              child: Visibility(
                visible: controller.isLoadingAggregateData.value,
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

  Widget _buildMobilitySection(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildGraphCard(context),
      ],
    );
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

  Widget _buildGraphCard(BuildContext context) {
    final title = 'Mobilitas Sarana';
    // final title = controller.showMobilitasPenumpang.value
    //     ? 'Mobilitas Penumpang'
    //     : 'Mobilitas Sarana';

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
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buildGraphContent(context),
        ],
      ),
    );
  }

  Widget _buildGraphContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildChartBar(context),
            _buildGraphLegend(context),
          ],
        ),
      ),
    );
  }

  Widget _buildGraphLegend(BuildContext context) {
    return Obx(() {
      final trafficData = controller.currentTrafficData.value;
      if (trafficData == null) return const SizedBox.shrink();

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLegendItem(
            context: context,
            isVehicle: controller.showVehicleData.value,
            color: AppColors.secondaryColor,
            value: _calculateTotal(
              controller.showVehicleData.value
                  ? trafficData.vehicleDeparture
                  : trafficData.departure,
            ),
            label: 'Keluar',
          ),
          const SizedBox(width: 20),
          _buildLegendItem(
            context: context,
            isVehicle: controller.showVehicleData.value,
            color: AppColors.violetColor,
            value: _calculateTotal(
              controller.showVehicleData.value
                  ? trafficData.vehicleArrival
                  : trafficData.arrival,
            ),
            label: 'Masuk',
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
    required bool isVehicle,
    required Color color,
    required String value,
    required String label,
    required BuildContext context,
  }) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Row(
      children: [
        isVehicle
            ? SvgPicture.asset(
                AssetConstant.busIcon,
                width: isUnfolded ? 14 : (isSmallScreen ? 10 : 14),
                height: isUnfolded ? 14 : (isSmallScreen ? 10 : 14),
                color: color,
              )
            : SvgPicture.asset(
                AssetConstant.userGroup,
                width: isUnfolded ? 14 : (isSmallScreen ? 10 : 14),
                height: isUnfolded ? 14 : (isSmallScreen ? 10 : 14),
                color: color,
              ),
        const SizedBox(width: 4),
        Text(
          value,
          style: Get.textTheme.labelMedium!.copyWith(
            color: color,
            fontSize: isUnfolded ? 14 : (isSmallScreen ? 10 : 11),
          ),
        ),
        const SizedBox(width: 2),
        Text(label, style: Get.textTheme.labelMedium!.copyWith(
          fontSize: isUnfolded ? 14 : (isSmallScreen ? 10 : 11),
        )),
      ],
    );
  }

  Widget _buildChartBar(BuildContext context) {
    return Obx(() {
      final trafficData = controller.currentTrafficData.value;

      if (trafficData == null) {
        return SizedBox(
          height: 200,
          child: Center(
            child: Text('Memuat data'),
          ),
        );
      }

      final isEmpty = [
        trafficData.vehicleDeparture,
        trafficData.arrival,
        trafficData.departure,
        trafficData.vehicleArrival,
      ].any((list) => list?.isEmpty ?? true);

      if (isEmpty) return const EmptyState();

      final maxValue = _calculateChartMaxValue(trafficData);

      return SizedBox(
        height: 200,
        child: SfCartesianChart(
          plotAreaBorderColor: Colors.transparent,
          primaryXAxis: _buildChartXAxis(context),
          primaryYAxis: _buildChartYAxis(maxValue, context),
          series: _buildChartSeries(trafficData),
        ),
      );
    });
  }

  double _calculateChartMaxValue(TrafficData trafficData) {
    if (controller.showVehicleData.value) {
      final departures = (trafficData.vehicleDeparture ?? [])
          .map((e) => e.value)
          .fold(1.0, max);
      final arrivals =
          (trafficData.vehicleArrival ?? []).map((e) => e.value).fold(1.0, max);
      return max(departures, arrivals);
    } else {
      final departures =
          (trafficData.departure ?? []).map((e) => e.value).fold(1.0, max);
      final arrivals =
          (trafficData.arrival ?? []).map((e) => e.value).fold(1.0, max);
      return max(departures, arrivals);
    }
  }

  CategoryAxis _buildChartXAxis(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return CategoryAxis(
      majorGridLines: const MajorGridLines(width: 0),
      labelStyle: Get.textTheme.bodySmall!.copyWith(
        fontSize: isUnfolded ? 10 : (isSmallScreen ? 7 : 5),
      ),
      interval: 1,
    );
  }

  NumericAxis _buildChartYAxis(double maxValue, BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return NumericAxis(
      axisLabelFormatter: (value) {
        return ChartAxisLabel(
          double.tryParse(value.text)?.toInt().toDotSeparated() ?? value.text,
          value.textStyle,
        );
      },
      minimum: 0,
      maximum: maxValue.roundUp50k(),
      interval: (maxValue.roundUp50k() / 5),
      majorGridLines: MajorGridLines(
        width: 1,
        color: AppColors.lightGreyColor,
      ),
      labelStyle: Get.textTheme.bodySmall!.copyWith(
        fontSize: isUnfolded ? 10 : (isSmallScreen ? 7 : 5),
      ),
      labelIntersectAction: AxisLabelIntersectAction.wrap,
      axisLine: const AxisLine(width: 0),
    );
  }

  List<CartesianSeries<ChartData, String>> _buildChartSeries(
      TrafficData trafficData) {
    return <CartesianSeries<ChartData, String>>[
      LineSeries<ChartData, String>(
        name: "Berangkat",
        dataSource: controller.showVehicleData.value
            ? trafficData.vehicleDeparture
            : trafficData.departure,
        xValueMapper: (ChartData data, _) {
          // Filter harian - tampilkan format tanggal
          if (controller.isRoutine.value && controller.selectedFilter.value == 0) {
            // Dapatkan tanggal dari data
            final dateTime = DateTime.tryParse(data.label);
            if (dateTime != null) {
              // Format tanggal menjadi dd (2 digit)
              return DateFormat('dd').format(dateTime);
            } else {
              // coba ekstrak dari format tanggal lain jika tersedia
              final regex = RegExp(r'(\d{1,2})[-/]');
              final match = regex.firstMatch(data.label);
              if (match != null && match.groupCount >= 1) {
                return match.group(1)!.padLeft(2, '0');
              }
            }
            
            return data.label;
          }
          
          // Filter mingguan - tampilkan format minggu
          else if (controller.isRoutine.value && controller.selectedFilter.value == 1) {
            // coba parse tanggal dari label
            final dateTime = DateTime.tryParse(data.label);
            if (dateTime != null) {
              // hitung minggu ke-berapa
              int weekNumber = ((dateTime.difference(DateTime(dateTime.year, 1, 1)).inDays) / 7).floor() + 1;
              return 'W$weekNumber';
            } else {
              final weekRegex = RegExp(r'[Ww](\d+)');
              final match = weekRegex.firstMatch(data.label);
              if (match != null && match.groupCount >= 1) {
                return 'W${match.group(1)}';
              }
              
              return data.label;
            }
          }
          
          // Filter bulanan - tampilkan format MMMyy (Jan25, Feb25, dll)
          else if (controller.isRoutine.value && controller.selectedFilter.value == 2) {
            // Coba parse tanggal dari label
            final dateTime = DateTime.tryParse(data.label);
            if (dateTime != null) {
              // Format bulan dalam bahasa Indonesia
              String month;
              switch (dateTime.month) {
                case 1: month = 'Jan'; break;
                case 2: month = 'Feb'; break;
                case 3: month = 'Mar'; break;
                case 4: month = 'Apr'; break;
                case 5: month = 'Mei'; break;
                case 6: month = 'Jun'; break;
                case 7: month = 'Jul'; break;
                case 8: month = 'Ags'; break;
                case 9: month = 'Sep'; break;
                case 10: month = 'Okt'; break;
                case 11: month = 'Nov'; break;
                case 12: month = 'Des'; break;
                default: month = 'Jan';
              }
              
              // Format tahun ke 2 digit (2025 -> 25)
              String year = (dateTime.year % 100).toString();
              
              return '$month$year';
            } else {
              // Coba ekstrak dari format yang mungkin sudah berisi informasi bulan dan tahun
              // Format pertama: "yyyy-MM" atau "yyyy/MM"
              final dateRegex = RegExp(r'(\d{4})[-/](\d{1,2})');
              final match = dateRegex.firstMatch(data.label);
              if (match != null && match.groupCount >= 2) {
                final year = int.parse(match.group(1)!) % 100;
                final month = int.parse(match.group(2)!);
                
                String monthName;
                switch (month) {
                  case 1: monthName = 'Jan'; break;
                  case 2: monthName = 'Feb'; break;
                  case 3: monthName = 'Mar'; break;
                  case 4: monthName = 'Apr'; break;
                  case 5: monthName = 'Mei'; break;
                  case 6: monthName = 'Jun'; break;
                  case 7: monthName = 'Jul'; break;
                  case 8: monthName = 'Ags'; break;
                  case 9: monthName = 'Sep'; break;
                  case 10: monthName = 'Okt'; break;
                  case 11: monthName = 'Nov'; break;
                  case 12: monthName = 'Des'; break;
                  default: monthName = 'Jan';
                }
                
                return '$monthName$year';
              }
              
              // Format kedua: "yyyy-Q" (kuarter)
              final quarterRegex = RegExp(r'(\d{4})-(\d)');
              final quarterMatch = quarterRegex.firstMatch(data.label);
              if (quarterMatch != null && quarterMatch.groupCount >= 2) {
                final year = int.parse(quarterMatch.group(1)!) % 100;
                final quarter = int.parse(quarterMatch.group(2)!);
                
                // Konversi kuarter ke bulan (Q1=Jan, Q2=Apr, Q3=Jul, Q4=Okt)
                String monthName;
                switch (quarter) {
                  case 1: monthName = 'Jan'; break;
                  case 2: monthName = 'Apr'; break;
                  case 3: monthName = 'Jul'; break;
                  case 4: monthName = 'Okt'; break;
                  case 5: monthName = 'Mei'; break;  // Handle special case or error
                  default: monthName = 'Jan';
                }
                
                return '$monthName$year';
              }
              
              return data.label;
            }
          }
          
          // Filter tahunan - tampilkan format YYYY (tahun)
          else if (controller.isRoutine.value && controller.selectedFilter.value == 3) {
            // Coba parse tanggal dari label
            final dateTime = DateTime.tryParse(data.label);
            if (dateTime != null) {
              // Format tahun (2025, 2026, dst.)
              return dateTime.year.toString();
            } else {
              // Coba ekstrak tahun dari format lain
              // Format "yyyy-anything" atau "yyyy/anything"
              final yearRegex = RegExp(r'^(\d{4})[-/]');
              final match = yearRegex.firstMatch(data.label);
              if (match != null && match.groupCount >= 1) {
                return match.group(1)!;
              }
              
              // Format "yyyy" saja
              final yearOnlyRegex = RegExp(r'^(\d{4})$');
              final yearMatch = yearOnlyRegex.firstMatch(data.label);
              if (yearMatch != null && yearMatch.groupCount >= 1) {
                return yearMatch.group(1)!;
              }
              
              return data.label;
            }
          }
          
          // Filter tahunan atau default
          return controller.isRoutine.value
              ? '(${data.label.chartYLabel})'
              : data.label;
        },
        yValueMapper: (ChartData data, _) => data.value,
        color: AppColors.chartColor,
        markerSettings: const MarkerSettings(
          isVisible: true,
          color: AppColors.chartColor,
        ),
      ),
      LineSeries<ChartData, String>(
        name: "Tiba",
        dataSource: controller.showVehicleData.value
            ? trafficData.vehicleArrival
            : trafficData.arrival,
        xValueMapper: (ChartData data, _) {
          // Filter harian - tampilkan format tanggal
          if (controller.isRoutine.value && controller.selectedFilter.value == 0) {
            // Dapatkan tanggal dari data
            final dateTime = DateTime.tryParse(data.label);
            if (dateTime != null) {
              // Format tanggal menjadi dd (2 digit)
              return DateFormat('dd').format(dateTime);
            } else {
              // coba ekstrak dari format tanggal lain jika tersedia
              final regex = RegExp(r'(\d{1,2})[-/]');
              final match = regex.firstMatch(data.label);
              if (match != null && match.groupCount >= 1) {
                return match.group(1)!.padLeft(2, '0');
              }
            }
            
            return data.label;
          }
          
          // Filter mingguan - tampilkan format minggu
          else if (controller.isRoutine.value && controller.selectedFilter.value == 1) {
            // coba parse tanggal dari label
            final dateTime = DateTime.tryParse(data.label);
            if (dateTime != null) {
              // hitung minggu ke-berapa
              int weekNumber = ((dateTime.difference(DateTime(dateTime.year, 1, 1)).inDays) / 7).floor() + 1;
              return 'W$weekNumber';
            } else {
              final weekRegex = RegExp(r'[Ww](\d+)');
              final match = weekRegex.firstMatch(data.label);
              if (match != null && match.groupCount >= 1) {
                return 'W${match.group(1)}';
              }
              
              return data.label;
            }
          }
          
          // Filter bulanan - tampilkan format MMMyy (Jan25, Feb25, dll)
          else if (controller.isRoutine.value && controller.selectedFilter.value == 2) {
            // Coba parse tanggal dari label
            final dateTime = DateTime.tryParse(data.label);
            if (dateTime != null) {
              // Format bulan dalam bahasa Indonesia
              String month;
              switch (dateTime.month) {
                case 1: month = 'Jan'; break;
                case 2: month = 'Feb'; break;
                case 3: month = 'Mar'; break;
                case 4: month = 'Apr'; break;
                case 5: month = 'Mei'; break;
                case 6: month = 'Jun'; break;
                case 7: month = 'Jul'; break;
                case 8: month = 'Ags'; break;
                case 9: month = 'Sep'; break;
                case 10: month = 'Okt'; break;
                case 11: month = 'Nov'; break;
                case 12: month = 'Des'; break;
                default: month = 'Jan';
              }
              
              // Format tahun ke 2 digit (2025 -> 25)
              String year = (dateTime.year % 100).toString();
              
              return '$month$year';
            } else {
              // Coba ekstrak dari format yang mungkin sudah berisi informasi bulan dan tahun
              // Format pertama: "yyyy-MM" atau "yyyy/MM"
              final dateRegex = RegExp(r'(\d{4})[-/](\d{1,2})');
              final match = dateRegex.firstMatch(data.label);
              if (match != null && match.groupCount >= 2) {
                final year = int.parse(match.group(1)!) % 100;
                final month = int.parse(match.group(2)!);
                
                String monthName;
                switch (month) {
                  case 1: monthName = 'Jan'; break;
                  case 2: monthName = 'Feb'; break;
                  case 3: monthName = 'Mar'; break;
                  case 4: monthName = 'Apr'; break;
                  case 5: monthName = 'Mei'; break;
                  case 6: monthName = 'Jun'; break;
                  case 7: monthName = 'Jul'; break;
                  case 8: monthName = 'Ags'; break;
                  case 9: monthName = 'Sep'; break;
                  case 10: monthName = 'Okt'; break;
                  case 11: monthName = 'Nov'; break;
                  case 12: monthName = 'Des'; break;
                  default: monthName = 'Jan';
                }
                
                return '$monthName$year';
              }
              
              // Format kedua: "yyyy-Q" (kuarter)
              final quarterRegex = RegExp(r'(\d{4})-(\d)');
              final quarterMatch = quarterRegex.firstMatch(data.label);
              if (quarterMatch != null && quarterMatch.groupCount >= 2) {
                final year = int.parse(quarterMatch.group(1)!) % 100;
                final quarter = int.parse(quarterMatch.group(2)!);
                
                // Konversi kuarter ke bulan (Q1=Jan, Q2=Apr, Q3=Jul, Q4=Okt)
                String monthName;
                switch (quarter) {
                  case 1: monthName = 'Jan'; break;
                  case 2: monthName = 'Apr'; break;
                  case 3: monthName = 'Jul'; break;
                  case 4: monthName = 'Okt'; break;
                  case 5: monthName = 'Mei'; break;  // Handle special case or error
                  default: monthName = 'Jan';
                }
                
                return '$monthName$year';
              }
              
              return data.label;
            }
          }
          
          // Filter tahunan - tampilkan format YYYY (tahun)
          else if (controller.isRoutine.value && controller.selectedFilter.value == 3) {
            // Coba parse tanggal dari label
            final dateTime = DateTime.tryParse(data.label);
            if (dateTime != null) {
              // Format tahun (2025, 2026, dst.)
              return dateTime.year.toString();
            } else {
              // Coba ekstrak tahun dari format lain
              // Format "yyyy-anything" atau "yyyy/anything"
              final yearRegex = RegExp(r'^(\d{4})[-/]');
              final match = yearRegex.firstMatch(data.label);
              if (match != null && match.groupCount >= 1) {
                return match.group(1)!;
              }
              
              // Format "yyyy" saja
              final yearOnlyRegex = RegExp(r'^(\d{4})$');
              final yearMatch = yearOnlyRegex.firstMatch(data.label);
              if (yearMatch != null && yearMatch.groupCount >= 1) {
                return yearMatch.group(1)!;
              }
              
              return data.label;
            }
          }
          
          // Filter tahunan atau default
          return controller.isRoutine.value
              ? '(${data.label.chartYLabel})'
              : data.label;
        },
        yValueMapper: (ChartData data, _) => data.value,
        color: AppColors.violetColor,
        markerSettings: const MarkerSettings(
          isVisible: true,
          color: AppColors.violetColor,
        ),
      ),
    ];
  }

  Widget _buildTopNodesSection(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildTopNodeGraph(context),
        Obx(() {
          return Visibility(
            visible: !controller.isLoadingAggregateData.value &&
                controller.currentTrafficData.value != null,
            child: _buildChartsNavigationArrows(),
          );
        }),
      ],
    );
  }

  Widget _buildChartsNavigationArrows() {
    return Obx(() {
      final showMobilitas = controller.showAlternateAggregateData.value;
      if (!showMobilitas) {
        return _buildArrow(
          left: 8,
          asset: 'assets/icons/slidekiri.svg',
          onTap: () {
            controller.showAlternateAggregateData.value = true;
          },
        );
      }
      return _buildArrow(
        right: 9,
        asset: 'assets/icons/slidekanan.svg',
        onTap: () {
          controller.showAlternateAggregateData.value = false;
        },
      );
    });
  }

  Widget _buildTopNodeGraph(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader(context),
          const SizedBox(height: 8),
          Obx(() => controller.isSwitched.value
              ? _buildAggregateChart()
              : _buildAggregateTable()),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '10 Jaringan Terpadat',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Obx(() => Text(
                  controller.isSwitched.value ? 'Chart' : 'Value',
                  style: Get.textTheme.labelMedium!.copyWith(
                    fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 14),
                  ),
                )),
            Obx(() => Transform.scale(
                  scale: 0.6,
                  child: CupertinoSwitch(
                    value: controller.isSwitched.value,
                    onChanged: (value) => controller.isSwitched.value = value,
                    activeColor: AppColors.gradientEndColor,
                  ),
                )),
          ],
        ),
        Obx(() => Text(
              controller.showAlternateAggregateData.value
                  ? 'Berdasarkan Jumlah Kendaraan Keluar Jakarta'
                  : 'Berdasarkan Jumlah Kendaraan Masuk Jakarta',
              style: Get.textTheme.labelMedium!.copyWith(
                fontSize: isUnfolded ? 13 : (isSmallScreen ? 10 : 10),
              ),
            )),
      ],
    );
  }

  Widget _buildAggregateChart() {
    return Obx(() {
      final chartData = controller.currentAggregateData.value?.chart;

      if (chartData == null) {
        return SizedBox(
          height: 200,
          child: Center(
            child: Text('Memuat data'),
          ),
        );
      }

      if (chartData.isEmpty) return const EmptyState();

      final maxValue = _calculateMaxValue(chartData);

      return SizedBox(
        // height: 350,
        child: BarChart(
          chartData: chartData,
          maxValue: maxValue,
          showAlternateAggregateData: controller.showAlternateAggregateData.value,
          chartColor: controller.showAlternateAggregateData.value
              ? AppColors.chartColor
              : Colors.pink,
        ),
      );
    });
  }

  Widget _buildAggregateTable() {
    return Builder(
      builder: (context) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Obx(() {
            final list = _getSortedAggregateData();
            if (list == null) {
              return SizedBox(
                height: 200,
                child: Center(
                  child: Text('Memuat data'),
                ),
              );
            }
            if (list.isEmpty) return const EmptyState();

            return DataTable(
              columnSpacing: 10,
              headingRowHeight: 40,
              dataRowHeight: 35,
              dividerThickness: 0,
              horizontalMargin: 8,
              headingRowColor: MaterialStateProperty.all(Colors.grey[200]),
              columns: _buildTableColumns(context),
              rows: _buildTableRows(list),
            );
          }),
        );
      },
    );
  }

  List<DataColumn> _buildTableColumns(BuildContext context) {
    return [
      const DataColumn(
        label: Text(
          'No',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ),
      const DataColumn(
        label: Text(
          'Jaringan',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ),
      DataColumn(
        numeric: true,
        label: SizedBox(
          width: MediaQuery.of(context).size.width * 0.10,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: SvgPicture.asset(
              AssetConstant.tolIcon,
              height: 17,
            ),
          ),
        ),
      ),
    ];
  }

  List<DataRow> _buildTableRows(List<AggregateChartData> list) {
    return List<DataRow>.generate(
      list.length,
      (index) {
        final data = list[index];
        // final people = controller.showAlternateAggregateData.value
        //     ? data.departure
        //     : data.arrival;
        final vehicle = controller.showAlternateAggregateData.value
            ? data.vehicleDeparture
            : data.vehicleArrival;

        return DataRow(
          color: index % 2 == 1
              ? MaterialStateProperty.all(Colors.grey[100])
              : null,
          cells: [
            DataCell(
                Text('${index + 1}', style: const TextStyle(fontSize: 12))),
            DataCell(Text(
                data.name != ''
                    ? data.name.toString()
                    : data.idLocation.toString(),
                style: const TextStyle(fontSize: 12))),
            DataCell(Text(
              '${vehicle?.toDotSeparated()}',
              style: const TextStyle(fontSize: 12),
            )),
          ],
        );
      },
    );
  }

  List<AggregateChartData>? _getSortedAggregateData() {
    final list = controller.currentAggregateData.value?.chart;
    if (list == null) return null;

    final res = List<AggregateChartData>.from(list)
      ..sort((a, b) => controller.showAlternateAggregateData.value
          ? (b.vehicleDeparture ?? 0).compareTo(a.vehicleDeparture ?? 0)
          : (b.vehicleArrival ?? 0).compareTo(a.vehicleArrival ?? 0));
    return res.take(10).toList();
  }

  double _calculateMaxValue(List<AggregateChartData> chartData) {
    if (chartData.isEmpty) {
      return 100;
    }
    return chartData
        .map((e) =>
            (controller.showAlternateAggregateData.value
                ? e.vehicleDeparture
                : e.vehicleArrival) ??
            0)
        .fold(1, max)
        .toDouble();
  }
}
