import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/domain/entities/focus.dart';
import 'package:strategi_hub_app/modules/cctv/views/cctv_player.dart';
import 'package:strategi_hub_app/modules/fokus/controllers/fokus_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';
import 'package:strategi_hub_app/utils/extentions/string_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TimeSeriesData {
  final String time;
  final double value1;
  final double value2;

  TimeSeriesData(this.time, this.value1, this.value2);
}

class MobilityStatsScreen extends GetView<FokusController> {
  static const routeName = '/fokus';
  const MobilityStatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
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
            const SizedBox(height: 8),
            Obx(() {
              return Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  controller.focusData.value?.judul ?? '',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }),
            const SizedBox(height: 8),
            _buildMobilitySection(),
            _buildWeatherInfo(),
            _buildCCTVSection(context),
            _build30SecondPreview(context),
            _buildLiveStreamingPreview(context),
            _buildDataKecelakaan(),
          ],
        ),
      ),
    );
  }

  Widget _buildMobilitySection() {
    return Obx(() {
      return ListView.builder(
          itemCount: controller.currentSimpulTransportasi.value?.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final simpulTransportasi =
                controller.currentSimpulTransportasi.value?[index];

            if (simpulTransportasi == null) return const SizedBox();

            final title = controller.showMobilitasPenumpang.value
                ? 'Mobilitas Penumpang'
                : 'Mobilitas Sarana';

            return Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  simpulTransportasi.location ?? '',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Stack(alignment: Alignment.center, children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 1, vertical: 12),
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
                      const SizedBox(height: 4),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 4.0),
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
                              _buildChartBar(simpulTransportasi),
                              _buildGraphLegend(context, simpulTransportasi),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                _buildNavigationArrows(),
              ])
            ]);
          });
    });
  }

  Widget _buildNavigationArrows() {
    return Obx(() {
      final showMobilitas = controller.showMobilitasPenumpang.value;
      if (!showMobilitas) {
        return _buildArrow(
          left: 8,
          asset: 'assets/icons/slidekiri.svg',
          onTap: () {
            controller.showMobilitasPenumpang.value = true;
            controller.showVehicleData.value = false;
            controller.currentSimpulTransportasi.refresh();
          },
        );
      }
      return _buildArrow(
        right: 9,
        asset: 'assets/icons/slidekanan.svg',
        onTap: () {
          controller.showMobilitasPenumpang.value = false;
          controller.showVehicleData.value = true;
          controller.currentSimpulTransportasi.refresh();
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

  Widget _buildChartBar(SimpulChartData simpulData) {
    return Obx(
      () {
        final maxValue = _calculateChartMaxValue(simpulData);

        return SizedBox(
          height: 200,
          child: SfCartesianChart(
            plotAreaBorderColor: Colors.transparent,
            primaryXAxis: CategoryAxis(
              majorGridLines: const MajorGridLines(width: 0),
              labelStyle: Get.textTheme.bodySmall!.copyWith(
                fontSize: 7,
              ),
              interval: 1,
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
              maximum: maxValue.roundUp50k(),
              interval: maxValue.roundUp50k() / 5,
              majorGridLines: MajorGridLines(
                width: 1,
                color: AppColors.lightGreyColor,
              ),
              labelStyle: Get.textTheme.bodySmall!.copyWith(
                fontSize: 7,
              ),
              labelIntersectAction: AxisLabelIntersectAction.wrap,
              axisLine: const AxisLine(width: 0),
            ),
            series: _buildChartSeries(simpulData),
          ),
        );
      },
    );
  }

  double _calculateChartMaxValue(SimpulChartData simpulData) {
    if (controller.showVehicleData.value) {
      final departures = (simpulData.vehicleDeparture ?? [])
          .map((e) => e.value)
          .fold(1.0, max);
      final arrivals =
          (simpulData.vehicleArrival ?? []).map((e) => e.value).fold(1.0, max);
      return max(departures, arrivals);
    } else {
      final departures =
          (simpulData.departure ?? []).map((e) => e.value).fold(1.0, max);
      final arrivals =
          (simpulData.arrival ?? []).map((e) => e.value).fold(1.0, max);
      return max(departures, arrivals);
    }
  }

  List<CartesianSeries<ChartFocusData, String>> _buildChartSeries(
      SimpulChartData simpulData) {
    return <CartesianSeries<ChartFocusData, String>>[
      LineSeries<ChartFocusData, String>(
        name: "Berangkat",
        dataSource: controller.showVehicleData.value
            ? simpulData.vehicleDeparture
            : simpulData.departure,
        xValueMapper: (ChartFocusData data, _) {
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
        yValueMapper: (ChartFocusData data, _) => data.value,
        color: AppColors.chartColor,
        markerSettings: const MarkerSettings(
          isVisible: true,
          color: AppColors.chartColor,
        ),
      ),
      LineSeries<ChartFocusData, String>(
        name: "Tiba",
        dataSource: controller.showVehicleData.value
            ? simpulData.vehicleArrival
            : simpulData.arrival,
        xValueMapper: (ChartFocusData data, _) => '(${data.label.chartYLabel})',
        yValueMapper: (ChartFocusData data, _) => data.value,
        color: AppColors.violetColor,
        markerSettings: const MarkerSettings(
          isVisible: true,
          color: AppColors.violetColor,
        ),
      ),
    ];
  }

  Widget _buildGraphLegend(BuildContext context, SimpulChartData simpulData) {
    // Debug log untuk menampilkan moda di SimpulChartData
    debugPrint('SimpulChartData moda: ${simpulData.moda}');

    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLegendItem(
            context: context,
            isVehicle: controller.showVehicleData.value,
            color: AppColors.secondaryColor,
            value: _calculateTotal(
              controller.showVehicleData.value
                  ? simpulData.vehicleDeparture
                  : simpulData.departure,
            ),
            label: 'Berangkat',
            moda: simpulData.moda,
          ),
          const SizedBox(width: 20),
          _buildLegendItem(
            context: context,
            isVehicle: controller.showVehicleData.value,
            color: AppColors.violetColor,
            value: _calculateTotal(
              controller.showVehicleData.value
                  ? simpulData.vehicleArrival
                  : simpulData.arrival,
            ),
            label: 'Tiba',
            moda: simpulData.moda,
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
    String? moda,
  }) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;

    final bool isStasiun = moda == 'stasiun' || moda == 'ka';
    final bool isLaut = moda == 'laut';
    final bool isBis = moda == 'jalan' || moda == 'toll';

    // Debug log untuk moda
    debugPrint('Nilai moda: $moda, isStasiun: $isStasiun');

    return Row(
      children: [
        isVehicle
            ? SvgPicture.asset(
                isStasiun
                    ? AssetConstant.trainIcon
                    : (isLaut
                        ? AssetConstant.shipIcon
                        : (isBis
                            ? AssetConstant.miniBus
                            : AssetConstant.planeIcon)),
                width: isUnfolded ? 14 : (isSmallScreen ? 11 : 14),
                height: isUnfolded ? 14 : (isSmallScreen ? 11 : 14),
                color: color,
              )
            : SvgPicture.asset(
                AssetConstant.userGroup,
                width: isUnfolded ? 14 : (isSmallScreen ? 11 : 14),
                height: isUnfolded ? 14 : (isSmallScreen ? 11 : 14),
                color: color,
              ),
        const SizedBox(width: 4),
        Text(
          value,
          style: Get.textTheme.labelMedium!.copyWith(
              color: color,
              fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 9)),
        ),
        const SizedBox(width: 2),
        Text(
          label,
          style: Get.textTheme.labelMedium!
              .copyWith(fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 9)),
        ),
      ],
    );
  }

  String _calculateTotal(List<ChartFocusData>? data) {
    if (data == null || data.isEmpty) return '0';
    return data
        .map((e) => e.value)
        .reduce((a, b) => a + b)
        .toInt()
        .toDotSeparated();
  }

  Widget _buildWeatherInfo() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Expanded(
            child: _buildWeatherCard(
              'Banten',
              'Pelabuhan Merak',
              '24',
              true,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: _buildWeatherCard(
              'Lampung',
              'Pelabuhan Bakauheni',
              '22',
              false,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherCard(
      String location, String subLocation, String temperature, bool isLeft) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/Hujan.svg',
            height: 57,
            width: 57,
          ),
          Text(
            location,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            subLocation,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                temperature,
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 9),
                child: Text(
                  '°',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'Cerah Berawan',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCCTVSection(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 16, 6),
            child: Text(
              'CCTV',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Gambar dg tombol play
          Obx(() {
            final cctvItem = controller.focusData.value?.cctv;
            if (cctvItem == null || cctvItem.isEmpty) {
              return Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    'No data available',
                    style: Get.textTheme.labelMedium!
                        .copyWith(fontSize: isUnfolded ? 14 : 14),
                  ),
                ),
              );
            }
            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cctvItem.length,
                itemBuilder: (context, index) {
                  final item = cctvItem[index];
                  return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: CctvPlayer(
                        streamUrl: item.streamUrl ?? '',
                        isEmbed: ['mjpg', 'embedded', 'rtsp', 'other']
                            .contains(item.protocol),
                        name:
                            '${item.locationName ?? ''} - ${item.cctvName ?? ''}',
                        description:
                            '${item.cityName ?? ''} - ${item.provinceName ?? ''}',
                        status: item.status ?? '',
                      ));
                });
          }),
        ],
      ),
    );
  }

  Widget _build30SecondPreview(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 10, 6),
            child: Text(
              '30 SECOND',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Gambar dg tombol play
          Obx(() {
            final video = controller.focusData.value?.video30s;
            if (video == null || video.isEmpty) {
              return Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    'No data available',
                    style: Get.textTheme.labelMedium!
                        .copyWith(fontSize: isUnfolded ? 14 : 14),
                  ),
                ),
              );
            }
            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: video.length,
                itemBuilder: (context, index) {
                  final item = video[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CctvPlayer(
                      streamUrl: item.link ?? '',
                      isEmbed: true,
                      name: item.judul ?? '',
                    ),
                  );
                });
          }),
        ],
      ),
    );
  }

  Widget _buildLiveStreamingPreview(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 16, 6),
            child: Text(
              'LIVE STREAMING',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Gambar dg tombol play
          Obx(() {
            final liveStream = controller.focusData.value?.videoLiveStreaming;
            if (liveStream == null || liveStream.isEmpty) {
              return Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('No data available',
                      style: Get.textTheme.labelMedium!
                          .copyWith(fontSize: isUnfolded ? 14 : 14)),
                ),
              );
            }
            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: liveStream.length,
                itemBuilder: (context, index) {
                  final item = liveStream[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CctvPlayer(
                      streamUrl: item.link ?? '',
                      isEmbed: true,
                      name: item.judul ?? '',
                    ),
                  );
                });
          }),
        ],
      ),
    );
  }

  Widget _buildDataKecelakaan() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(6, 10, 16, 8),
            child: Text(
              'DATA KECELAKAAN',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(maxHeight: 300),
            child: Obx(() {
              final list = controller.listIncidentData.value;
              if (list == null || list.isEmpty) {
                return Center(
                  child: Text('No data available'),
                );
              }
              return ListView.builder(
                padding: EdgeInsets.fromLTRB(0, 16, 16, 0),
                itemBuilder: (context, index) {
                  final item = list[index];
                  return _buildKecelakaanItem(
                    id: item.id ?? '',
                    date: DateFormat('EEEE, dd MMMM yyyy', 'id_ID')
                        .tryFormat(item.incidentTime),
                    title: item.name ?? '-',
                    location: item.location ?? '-',
                    type: item.accidentType ?? '',
                    imageUrl: 'assets/images/Image.png',
                    victims: item.fatalities ?? 0,
                    injuries: (item.minorInjuries ?? 0) +
                        (item.moderateInjuries ?? 0) +
                        (item.seriousInjuries ?? 0),
                    typeColor: Colors.orange,
                  );
                },
                itemCount: list.length,
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildKecelakaanItem({
    required String id,
    required String date,
    required String title,
    required String location,
    required String type,
    required Color typeColor,
    required int victims,
    required int injuries,
    required String imageUrl,
  }) {
    return Transform.translate(
      offset: const Offset(0, -4),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 3,
          vertical: 8,
        ),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image(
                width: 90,
                height: 100,
                fit: BoxFit.cover,
                image: imageUrl.startsWith('http')
                    ? NetworkImage(imageUrl)
                    : AssetImage(imageUrl) as ImageProvider,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error, size: 60, color: Colors.red);
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 29, vertical: 4),
                        decoration: BoxDecoration(
                          color: typeColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          type,
                          style: TextStyle(
                            fontSize: 12,
                            color: typeColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Image(
                              image: AssetImage('assets/icons/Rip Icons.png'),
                              width: 17,
                              height: 17,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '$victims',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 7),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/Hansaplast.svg',
                              height: 17,
                              width: 17,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '$injuries',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
