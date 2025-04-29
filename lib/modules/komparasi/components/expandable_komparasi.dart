import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/modules/laporan/components/custom_dropdown_search.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/domain/entities/pantau.dart';
import 'package:strategi_hub_app/modules/komparasi/controllers/komparasi_controller.dart';
import 'package:strategi_hub_app/modules/komparasi/models/komparasi_model.dart';
import 'package:strategi_hub_app/utils/date_utils.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';
import 'package:strategi_hub_app/utils/extentions/string_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ExpandableKomparasi extends StatelessWidget {
  final int index;
  final KomparasiModel data;
  final List<Location> listSimpul;
  const ExpandableKomparasi({
    super.key,
    required this.index,
    required this.data,
    required this.listSimpul,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.s4),
        border: Border.all(color: AppColors.outlineColor),
      ),
      margin: EdgeInsets.only(bottom: Sizes.s10),
      child: ExpandableNotifier(
        child: ScrollOnExpand(
          child: Builder(builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExpandablePanel(
                  controller: data.expandableController,
                  theme: const ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    tapBodyToExpand: false,
                    tapBodyToCollapse: false,
                    useInkWell: false,
                    animationDuration: Duration(milliseconds: 500),
                    hasIcon: false,
                  ),
                  header: Container(
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Sizes.s10, vertical: Sizes.s8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Angkutan ${data.comparisonTitle.capitalizeFirst}',
                                    textAlign: TextAlign.start,
                                    style: Get.textTheme.labelLarge!.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: isSmallScreen ? 10 : 12),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Visibility(
                                  visible: data.isLoading,
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: Sizes.s4,
                                    ),
                                    width: 14,
                                    height: 14,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ExpandableIcon(
                            theme: ExpandableThemeData(
                              expandIcon: Icons.keyboard_arrow_down_rounded,
                              collapseIcon: Icons.keyboard_arrow_up_rounded,
                              iconColor: AppColors.darkGreyColor,
                              iconSize: Sizes.s24,
                              iconRotationAngle: 2,
                              iconPadding: EdgeInsets.zero,
                              hasIcon: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  collapsed: const SizedBox(),
                  expanded: ExpandedBodyKomparasi(
                    index: index,
                    data: data,
                    listSimpul: listSimpul,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class ExpandedBodyKomparasi extends GetView<KomparasiController> {
  final int index;
  final KomparasiModel data;
  final List<Location> listSimpul;

  const ExpandedBodyKomparasi(
      {super.key,
      required this.index,
      required this.data,
      required this.listSimpul});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(Sizes.s10, Sizes.s0, Sizes.s10, Sizes.s10),
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeaderRow(context),
          SizedBox(height: Sizes.s8),
          _buildLocationComparisonRow(index),
          SizedBox(height: Sizes.s10),
          _buildMobilitySection(context),
          SizedBox(height: Sizes.s10),
          _buildDeleteButton(context),
        ],
      ),
    );
  }

  // Header section with location name and departure toggle
  Widget _buildHeaderRow(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Row(
      children: [
        Expanded(
          child: Text(
            data.currentLocation.nama ?? '-',
            style: Get.textTheme.titleSmall?.copyWith(
                fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12)),
          ),
        ),
        Text(
          (data.isDeparture ?? true) ? 'Berangkat' : 'Kedatangan',
          style: Get.textTheme.titleSmall
              ?.copyWith(fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12)),
        ),
        Container(
          height: Sizes.s20,
          width: Sizes.s30,
          margin: EdgeInsets.only(left: Sizes.s4),
          alignment: Alignment.center,
          child: FittedBox(
            fit: BoxFit.contain,
            child: CupertinoSwitch(
              value: (data.isDeparture ?? true),
              onChanged: data.isHideArrival == false
                  ? (val) {
                      controller.updateToggleDeparture(data);
                    }
                  : null,
              activeTrackColor: AppColors.gradientEndColor,
            ),
          ),
        )
      ],
    );
  }

  // Location dropdown and comparison statistics
  Widget _buildLocationComparisonRow(int index) {
    return Row(
      children: [
        Expanded(
          child: Material(
            key: ValueKey('Location_Dropdown_$index'),
            child: CustomDropdownSearch(
              label: 'Lokasi',
              selectedItem: data.comparedLocation?.nama,
              items: listSimpul.map((e) => e.nama ?? '').toList(),
              onChanged: (val) {
                controller.updateComparedLocation(data, val ?? '');
              },
            ),
          ),
        ),
        SizedBox(width: Sizes.s10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomTextIcon(
              icon: AssetConstant.userGroup,
              label: data.isDeparture == true
                  ? (data.currentLocationComparison?.departureSummary
                          ?.toDotSeparated(maxLength: 6, wrap: true) ??
                      '0')
                  : (data.currentLocationComparison?.arrivalSummary
                          ?.toDotSeparated(maxLength: 6, wrap: true) ??
                      '0'),
            ),
            SizedBox(height: Sizes.s4),
            CustomTextIcon(
              icon: getIcon(data.comparisonTitle),
              label: data.isDeparture == true
                  ? (data.currentLocationComparison?.vehicleDepartureSummary
                          ?.toDotSeparated(maxLength: 6, wrap: true) ??
                      '0')
                  : (data.currentLocationComparison?.vehicleArrivalSummary
                          ?.toDotSeparated(maxLength: 6, wrap: true) ??
                      '0'),
            )
          ],
        )
      ],
    );
  }

  // Passenger mobility section with chart and legend
  Widget _buildMobilitySection(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          data.isVehicle ?? false ? 'Mobilitas Sarana' : 'Mobilitas Penumpang',
          style: Get.textTheme.titleSmall
              ?.copyWith(fontSize: isSmallScreen ? 10 : 12),
        ),
        LineChartWidgetCompare(data),
        _buildMobilityLegend(context),
      ],
    );
  }

  // Legend row for the mobility chart
  Widget _buildMobilityLegend(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ..._buildLegendItem(
          context,
          color: AppColors.secondaryColor,
          value: _getCurrentLocationSummary(),
          location: data.currentLocation.nama ?? '-',
        ),
        SizedBox(width: Sizes.s20),
        ..._buildLegendItem(
          context,
          color: AppColors.violetColor,
          value: _getComparedLocationSummary(),
          location: data.comparedLocation?.nama ?? '-',
        ),
      ],
    );
  }

  String getIcon(String? type) {
    switch (type) {
      case 'Jalan':
        return AssetConstant.busIcon;
      case 'Laut':
        return AssetConstant.shipIcon;
      case 'Penyeberangan':
        return AssetConstant.boatIcon;
      case 'Udara':
        return AssetConstant.planeIcon;
      case 'Stasiun':
      case 'Perkerataapian':
        return AssetConstant.trainIcon;
      case 'Arteri':
      case 'Toll':
        return AssetConstant.tolIcon;
      default:
        return AssetConstant.busIcon;
    }
  }

  // Helper method to build a legend item
  List<Widget> _buildLegendItem(context,
      {required Color color, required String value, required String location}) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return [
      SvgPicture.asset(
        data.isVehicle ?? false
            ? getIcon(data.comparisonTitle)
            : AssetConstant.userGroup,
        width: isUnfolded ? Sizes.s14 : (isSmallScreen ? Sizes.s10 : Sizes.s14),
        height:
            isUnfolded ? Sizes.s14 : (isSmallScreen ? Sizes.s10 : Sizes.s14),
        color: color,
      ),
      SizedBox(width: Sizes.s4),
      Text(
        value,
        style: Get.textTheme.labelMedium!.copyWith(
            color: color,
            fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12)),
      ),
      SizedBox(width: Sizes.s2),
      Flexible(
        child: Text(
          location,
          overflow: TextOverflow.ellipsis,
          style: Get.textTheme.labelMedium!.copyWith(
              color: color,
              fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12)),
        ),
      ),
    ];
  }

  // Helper methods to get the appropriate summary values
  String _getCurrentLocationSummary() {
    return (data.isDeparture ?? false)
        ? data.currentLocationComparison?.departureSummary?.toDotSeparated() ??
            '0'
        : data.currentLocationComparison?.arrivalSummary?.toDotSeparated() ??
            '0';
  }

  String _getComparedLocationSummary() {
    return (data.isDeparture ?? false)
        ? data.comparedLocationComparison?.departureSummary?.toDotSeparated() ??
            '0'
        : data.comparedLocationComparison?.arrivalSummary?.toDotSeparated() ??
            '0';
  }

  // Delete button at the bottom
  Widget _buildDeleteButton(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          controller.onDeleteFokus(data);
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.red[50],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.s4),
          ),
          padding: EdgeInsets.symmetric(vertical: Sizes.s10),
        ),
        child: Text(
          'Hapus',
          style: TextStyle(
            color: Colors.red,
            fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class CustomTextIcon extends StatelessWidget {
  final String label;
  final String icon;
  const CustomTextIcon({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Row(
      children: [
        // Text(label, style: Get.textTheme.labelMedium ?? const TextStyle()),
        Text(
          label,
          style: Get.textTheme.labelMedium?.copyWith(
                  fontSize: isUnfolded ? 14 : (isSmallScreen ? 10 : 12)) ??
              const TextStyle(),
        ),
        SizedBox(width: Sizes.s4),
        SvgPicture.asset(
          icon,
          width:
              isUnfolded ? Sizes.s14 : (isSmallScreen ? Sizes.s10 : Sizes.s14),
          height:
              isUnfolded ? Sizes.s14 : (isSmallScreen ? Sizes.s10 : Sizes.s14),
        ),
      ],
    );
  }
}

class LineChartWidgetCompare extends GetView<KomparasiController> {
  final KomparasiModel data;
  const LineChartWidgetCompare(this.data, {super.key});

  double get maxValue {
    final currentMax = currentData.isNotEmpty
        ? currentData.map((e) => e.value).fold(1.0, (a, b) => a > b ? a : b)
        : 1.0;
    final comparedMax = comparedData.isNotEmpty
        ? comparedData.map((e) => e.value).fold(1.0, (a, b) => a > b ? a : b)
        : 1.0;
    return currentMax > comparedMax ? currentMax : comparedMax;
  }

  List<ChartData> get currentData {
    List<ChartData> result = [];
    if (!controller.isRoutine.value) {
      if (data.isDeparture ?? false) {
        result = data.currentLocationComparison?.seasonal?.departure ?? [];
      } else {
        result = data.currentLocationComparison?.seasonal?.arrival ?? [];
      }
    } else {
      switch (controller.selectedFilter.value) {
        case 0:
          if (data.isDeparture ?? false) {
            result = data.currentLocationComparison?.weekly?.departure ?? [];
          } else {
            result = data.currentLocationComparison?.weekly?.arrival ?? [];
          }
          break;
        case 1:
          if (data.isDeparture ?? false) {
            result = data.currentLocationComparison?.monthly?.departure ?? [];
          } else {
            result = data.currentLocationComparison?.monthly?.arrival ?? [];
          }
          break;
        case 2:
          if (data.isDeparture ?? false) {
            result = data.currentLocationComparison?.yearly?.departure ?? [];
          } else {
            result = data.currentLocationComparison?.yearly?.arrival ?? [];
          }
          break;
        default:
          if (data.isDeparture ?? false) {
            result = data.currentLocationComparison?.weekly?.departure ?? [];
          } else {
            result = data.currentLocationComparison?.weekly?.arrival ?? [];
          }
      }
    }

    result.sort((a, b) => DateUtilsHelper.compareDateLabels(a.label, b.label));
    return result;
  }

  List<ChartData> get comparedData {
    // Get data based on filter conditions
    List<ChartData> result = [];
    if (!controller.isRoutine.value) {
      if (data.isDeparture ?? false) {
        result = data.comparedLocationComparison?.seasonal?.departure ?? [];
      } else {
        result = data.comparedLocationComparison?.seasonal?.arrival ?? [];
      }
    } else {
      switch (controller.selectedFilter.value) {
        case 0:
          if (data.isDeparture ?? false) {
            result = data.comparedLocationComparison?.weekly?.departure ?? [];
          } else {
            result = data.comparedLocationComparison?.weekly?.arrival ?? [];
          }
          break;
        case 1:
          if (data.isDeparture ?? false) {
            result = data.comparedLocationComparison?.monthly?.departure ?? [];
          } else {
            result = data.comparedLocationComparison?.monthly?.arrival ?? [];
          }
          break;
        case 2:
          if (data.isDeparture ?? false) {
            result = data.comparedLocationComparison?.yearly?.departure ?? [];
          } else {
            result = data.comparedLocationComparison?.yearly?.arrival ?? [];
          }
          break;
        default:
          if (data.isDeparture ?? false) {
            result = data.comparedLocationComparison?.weekly?.departure ?? [];
          } else {
            result = data.comparedLocationComparison?.weekly?.arrival ?? [];
          }
      }
    }

    result.sort((a, b) => DateUtilsHelper.compareDateLabels(a.label, b.label));
    return result;
  }

  // Determine which dataset has earlier dates
  bool get currentDataHasEarlierDate {
    if (currentData.isEmpty) return false;
    if (comparedData.isEmpty) return true;

    // Get the earliest date from each dataset
    final earliestCurrent =
        currentData.isNotEmpty ? currentData.first.label : "";
    final earliestCompared =
        comparedData.isNotEmpty ? comparedData.first.label : "";

    // Compare the earliest dates
    return DateUtilsHelper.compareDateLabels(
            earliestCurrent, earliestCompared) <
        0;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        // Sort both datasets
        final sortedCurrentData = currentData;
        final sortedComparedData = comparedData;

        // Dynamically determine which series should be rendered first
        List<CartesianSeries<ChartData, String>> seriesList = [];

        // Add series in the correct order based on which has earlier dates
        if (currentDataHasEarlierDate) {
          // Current data has earlier dates, render it first
          seriesList.add(
            LineSeries<ChartData, String>(
              name: data.currentLocation.nama ?? '-',
              dataSource: sortedCurrentData,
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
                    ? '(${data.label.chartYLabel.replaceAll(' ', '')})'
                    : data.label;
              },
              yValueMapper: (ChartData data, _) => data.value,
              color: AppColors.chartColor,
              markerSettings: MarkerSettings(
                isVisible: true,
                color: AppColors.chartColor,
              ),
            ),
          );

          seriesList.add(
            LineSeries<ChartData, String>(
              name: data.comparedLocation?.nama ?? '-',
              dataSource: sortedComparedData,
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
                    ? '(${data.label.chartYLabel.replaceAll(' ', '')})'
                    : data.label;
              },
              yValueMapper: (ChartData data, _) => data.value,
              color: AppColors.violetColor,
              markerSettings:
                  MarkerSettings(isVisible: true, color: AppColors.violetColor),
            ),
          );
        } else {
          // Compared data has earlier dates, render it first
          seriesList.add(
            LineSeries<ChartData, String>(
              name: data.comparedLocation?.nama ?? '-',
              dataSource: sortedComparedData,
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
                    ? '(${data.label.chartYLabel.replaceAll(' ', '')})'
                    : data.label;
              },
              yValueMapper: (ChartData data, _) => data.value,
              color: AppColors.violetColor,
              markerSettings:
                  MarkerSettings(isVisible: true, color: AppColors.violetColor),
            ),
          );

          seriesList.add(
            LineSeries<ChartData, String>(
              name: data.currentLocation.nama ?? '-',
              dataSource: sortedCurrentData,
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
                    ? '(${data.label.chartYLabel.replaceAll(' ', '')})'
                    : data.label;
              },
              yValueMapper: (ChartData data, _) => data.value,
              color: AppColors.chartColor,
              markerSettings: MarkerSettings(
                isVisible: true,
                color: AppColors.chartColor,
              ),
            ),
          );
        }

        return Column(
          children: [
            SizedBox(
              height: Sizes.s200,
              child: SfCartesianChart(
                plotAreaBorderColor: Colors.transparent,
                primaryXAxis: CategoryAxis(
                  majorGridLines: const MajorGridLines(width: 0),
                  labelStyle:
                      (Get.textTheme.bodySmall ?? const TextStyle()).copyWith(
                    fontSize: FontSizes.s7,
                  ),
                  interval: 1,
                ),
                primaryYAxis: NumericAxis(
                  axisLabelFormatter: (value) {
                    return ChartAxisLabel(
                      double.tryParse(value.text)?.toDotSeparated() ??
                          value.text,
                      value.textStyle,
                    );
                  },
                  minimum: 0,
                  maximum: maxValue.roundUp50k(),
                  interval: (maxValue.roundUp50k() / 5),
                  majorGridLines: MajorGridLines(
                    width: Sizes.s1,
                    color: AppColors.lightGreyColor,
                  ),
                  labelStyle:
                      (Get.textTheme.bodySmall ?? const TextStyle()).copyWith(
                    fontSize: FontSizes.s7,
                  ),
                  labelIntersectAction: AxisLabelIntersectAction.wrap,
                  axisLine: const AxisLine(width: 0),
                ),
                series: seriesList,
              ),
            ),
          ],
        );
      },
    );
  }
}
