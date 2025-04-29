import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/utils/extentions/string_extentions.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/domain/entities/od_data.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/od/controllers/detail_perkeretaapian_od_controller.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DetailPerkeretaapianOdPage
    extends GetView<PerkeretaapianOdDetailController> {
  static String routeName = '/detail-perkeretaapian-od-page';
  const DetailPerkeretaapianOdPage({super.key});

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
                        Obx(() {
                          return Text(
                            'Origin | ${controller.originStation.value}',
                            style: Get.textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: isUnfolded
                                    ? 14
                                    : (isSmallScreen ? 14 : FontSizes.s14)),
                          );
                        }),
                        SizedBox(height: Sizes.s4),
                        Text(
                          controller.originCityName.value.isEmpty
                              ? '-'
                              : controller.originCityName.value,
                          style: Get.textTheme.labelMedium!.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: isUnfolded
                                  ? 14
                                  : (isSmallScreen ? 14 : FontSizes.s10)),
                        ),
                        SizedBox(height: Sizes.s10),
                        _buildMobilitySection(true, context),
                        SizedBox(height: Sizes.s20),
                        Obx(() {
                          return Text(
                            'Destination | ${controller.destinationStation.value}',
                            style: Get.textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: isUnfolded
                                    ? 14
                                    : (isSmallScreen ? 14 : FontSizes.s10)),
                          );
                        }),
                        SizedBox(height: Sizes.s4),
                        Text(
                          controller.destinationCityName.value.isEmpty
                              ? '-'
                              : controller.destinationCityName.value,
                          style: Get.textTheme.labelMedium!.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: isUnfolded
                                  ? 14
                                  : (isSmallScreen ? 14 : FontSizes.s10)),
                        ),
                        SizedBox(height: Sizes.s10),
                        _buildMobilitySection(false, context)
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
                visible: controller.isLoadingOdData.value,
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

  Widget _buildMobilitySection(bool isOrigin, BuildContext context) {
    return Obx(() {
      return Stack(
        alignment: Alignment.center,
        children: [
          _buildGraphCard(isOrigin, context),
          Visibility(
            visible: !controller.isLoadingOdDetailData.value,
            child: _buildNavigationArrows(isOrigin),
          ),
        ],
      );
    });
  }

  Widget _buildGraphCard(bool isOrigin, BuildContext context) {
    return Obx(() {
      final title = isOrigin
          ? controller.showMobilitasPenumpangOrigin.value
              ? 'Mobilitas Penumpang'
              : 'Mobilitas Sarana'
          : controller.showMobilitasPenumpangDestination.value
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
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildGraphContent(isOrigin, context),
          ],
        ),
      );
    });
  }

  Widget _buildNavigationArrows(bool isOrigin) {
    return Obx(() {
      final showMobilitas = isOrigin
          ? controller.showMobilitasPenumpangOrigin.value
          : controller.showMobilitasPenumpangDestination.value;
      if (!showMobilitas) {
        return _buildArrow(
          left: 8,
          asset: 'assets/icons/slidekiri.svg',
          onTap: () {
            if (isOrigin) {
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
          if (isOrigin) {
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

  Widget _buildGraphContent(bool isOrigin, BuildContext context) {
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
            _buildChartBar(isOrigin),
            _buildGraphLegend(isOrigin, context),
          ],
        ),
      ),
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

  Widget _buildChartBar(bool isOrigin) {
    return Obx(() {
      final trafficData = isOrigin
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

      final maxValue = _calculateChartMaxValue(trafficData, isOrigin);

      return SizedBox(
        height: 200,
        child: SfCartesianChart(
          plotAreaBorderColor: Colors.transparent,
          primaryXAxis: _buildChartXAxis(),
          primaryYAxis: _buildChartYAxis(maxValue),
          series: _buildChartSeries(trafficData, isOrigin),
        ),
      );
    });
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
      dynamic trafficData, bool isOrigin) {
    return <CartesianSeries<ChartData, String>>[
      LineSeries<ChartData, String>(
        name: "Berangkat",
        dataSource: isOrigin
            ? controller.showVehicleDataOrigin.value
                ? trafficData.vehicleDeparture
                : trafficData.departure
            : controller.showVehicleDataDestination.value
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
        dataSource: isOrigin
            ? controller.showVehicleDataOrigin.value
                ? trafficData.vehicleArrival
                : trafficData.arrival
            : controller.showVehicleDataDestination.value
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

  Widget _buildGraphLegend(bool isOrigin, BuildContext context) {
    return Obx(() {
      final trafficData = isOrigin
          ? controller.currentTrafficDataOrigin.value
          : controller.currentTrafficDataDestination.value;
      if (trafficData == null) return const SizedBox.shrink();

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLegendItem(
            context: context,
            isVehicle: isOrigin
                ? controller.showVehicleDataOrigin.value
                : controller.showVehicleDataDestination.value,
            color: AppColors.secondaryColor,
            value: _calculateTotal(
              (isOrigin
                  ? controller.showVehicleDataOrigin.value
                      ? trafficData.vehicleDeparture
                      : trafficData.departure
                  : controller.showVehicleDataDestination.value
                      ? trafficData.vehicleDeparture
                      : trafficData.departure),
            ),
            label: 'Berangkat',
          ),
          const SizedBox(width: 20),
          _buildLegendItem(
            context: context,
            isVehicle: isOrigin
                ? controller.showVehicleDataOrigin.value
                : controller.showVehicleDataDestination.value,
            color: AppColors.violetColor,
            value: _calculateTotal(
              (isOrigin
                  ? controller.showVehicleDataOrigin.value
                      ? trafficData.vehicleArrival
                      : trafficData.arrival
                  : controller.showVehicleDataDestination.value
                      ? trafficData.vehicleArrival
                      : trafficData.arrival),
            ),
            label: 'Tiba',
          ),
        ],
      );
    });
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
            ? Icon(Icons.train, size: 17, color: color)
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
              fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s14)),
        ),
        const SizedBox(width: 2),
        Text(
          label,
          style: Get.textTheme.labelMedium!.copyWith(
              fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : FontSizes.s14)),
        ),
      ],
    );
  }

  String _calculateTotal(List<ChartData>? data) {
    if (data == null || data.isEmpty) return '0';
    return data
        .map((e) => e.value)
        .reduce((a, b) => a + b)
        .toInt()
        .toDotSeparated();
  }

  double _calculateChartMaxValue(TrafficData trafficData, bool isOrigin) {
    if (isOrigin) {
      if (controller.showVehicleDataOrigin.value) {
        final departures =
            (trafficData.vehicleDeparture).map((e) => e.value).fold(1.0, max);
        final arrivals =
            (trafficData.vehicleArrival).map((e) => e.value).fold(1.0, max);
        return max(departures, arrivals);
      } else {
        final departures =
            (trafficData.departure).map((e) => e.value).fold(1.0, max);
        final arrivals =
            (trafficData.arrival).map((e) => e.value).fold(1.0, max);
        return max(departures, arrivals);
      }
    } else {
      if (controller.showVehicleDataDestination.value) {
        final departures =
            (trafficData.vehicleDeparture).map((e) => e.value).fold(1.0, max);
        final arrivals =
            (trafficData.vehicleArrival).map((e) => e.value).fold(1.0, max);
        return max(departures, arrivals);
      } else {
        final departures =
            (trafficData.departure).map((e) => e.value).fold(1.0, max);
        final arrivals =
            (trafficData.arrival).map((e) => e.value).fold(1.0, max);
        return max(departures, arrivals);
      }
    }
  }
}
