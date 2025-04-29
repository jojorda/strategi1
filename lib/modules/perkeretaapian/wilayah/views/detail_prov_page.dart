import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/google_maps_view.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/modules/jalan/wilayah/controllers/detail_prov_controller.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/wilayah/views/detail_kota_page.dart';
import 'package:strategi_hub_app/modules/laut/wilayah/views/detail_maps_page.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';
import 'package:strategi_hub_app/utils/extentions/string_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DetailProvPage extends GetView<DetailProvController> {
  static const routeName = '/detail-prov';
  const DetailProvPage({super.key});

  String getTitle(ModaType? type) {
    switch (type) {
      default:
        return 'Simpul Angkutan ${type?.name.capitalizeFirst}';
    }
  }

  String getIcon(ModaType? type) {
    switch (type) {
      case null:
        return AssetConstant.busIcon;
      case ModaType.all:
        return AssetConstant.busIcon;
      case ModaType.jalan:
        return AssetConstant.busIcon;
      case ModaType.laut:
        return AssetConstant.shipIcon;
      case ModaType.asdp:
        return AssetConstant.boatIcon;
      case ModaType.arteri:
        return AssetConstant.tolIcon;
      case ModaType.udara:
        return AssetConstant.planeIcon;
      case ModaType.stasiun:
        return AssetConstant.trainIcon;
      case ModaType.toll:
        return AssetConstant.tolIcon;
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    final arguments = Get.arguments;
    ModaType? modaType;
    String? title;
    bool hideDeparture = false;
    if (arguments is Map<String, dynamic>) {
      modaType = arguments['moda'] as ModaType?;
      title = arguments['title'] as String?;
      hideDeparture = arguments['hideDeparture'] as bool? ?? false;
    }
    return BaseScaffold(
      title: controller.title.value.toUpperCase(),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.s16, vertical: Sizes.s24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderFilter(
                  isRutin: controller.isRoutine,
                  rangeGroupvalue: controller.selectedFilter,
                  onSelectedDate: controller.updateFilterDate,
                  selectedDateRange: controller.selectedDateRange,
                  listEvent: controller.eventList,
                  initialDates: controller.selectedRoutineRange,
                  selectedEvent: controller.currentEvent,
                  eventType: controller.eventType,
                  onSelectedEvent: (event) {
                    controller.currentEvent.value = event;
                  },
                  updateEventType: (value) {
                    controller.eventType.value = value;
                  },
                ),
                SizedBox(
                    height: isUnfolded
                        ? Sizes.s9
                        : (isSmallScreen ? 12 : Sizes.s12)),
                Text(
                  controller.provinceData.value?.name ?? '-',
                  style: Get.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 12)),
                ),
                SizedBox(
                    height: isUnfolded
                        ? Sizes.s7
                        : (isSmallScreen ? 12 : Sizes.s12)),
                _buildMobilitySection(
                  context: context,
                  modaType: modaType ?? ModaType.jalan,
                  hideDeparture: hideDeparture,
                ),
                SizedBox(
                    height: isUnfolded
                        ? Sizes.s9
                        : (isSmallScreen ? 12 : Sizes.s12)),
                Container(
                  padding: EdgeInsets.all(Sizes.s10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.s4),
                    border: Border.all(
                      color: Color(0xFFD5D5D5),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            getTitle(modaType),
                            style: Get.textTheme.titleSmall!.copyWith(
                              fontSize:
                                  isUnfolded ? 14 : (isSmallScreen ? 12 : 14),
                            ),
                          ),
                          Row(
                            children: [
                              Obx(
                                () => Text(
                                  controller.isComing.value
                                      ? "Tiba"
                                      : "Berangkat",
                                  style: Get.textTheme.labelMedium!.copyWith(
                                    fontSize: isUnfolded
                                        ? 14
                                        : (isSmallScreen ? 12 : 14),
                                  ),
                                ),
                              ),
                              if (!hideDeparture) ...[
                                SizedBox(
                                    width: isUnfolded
                                        ? Sizes.s6
                                        : (isSmallScreen
                                            ? Sizes.s4
                                            : Sizes.s6)),
                                Container(
                                  height: isUnfolded
                                      ? Sizes.s20
                                      : (isSmallScreen ? Sizes.s16 : Sizes.s20),
                                  width: isUnfolded
                                      ? Sizes.s24
                                      : (isSmallScreen ? Sizes.s20 : Sizes.s24),
                                  margin: EdgeInsets.only(
                                      right: isUnfolded
                                          ? Sizes.s4
                                          : (isSmallScreen
                                              ? Sizes.s2
                                              : Sizes.s4)),
                                  alignment: Alignment.center,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Obx(
                                      () => CupertinoSwitch(
                                        value: controller.isComing.value,
                                        onChanged: (val) {
                                          controller.isComing.value = val;
                                        },
                                        activeTrackColor:
                                            AppColors.gradientEndColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: Sizes.s4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Flexible(
                              child: Wrap(
                                spacing: Sizes.s8,
                                children: controller.listType.value
                                    .where((element) {
                                      return element != '';
                                    })
                                    .map(
                                      (e) => _filterItem(
                                        context: context,
                                        label: 'Tipe ${e.toUpperCase()}',
                                        value: e.toUpperCase(),
                                        checked: controller
                                            .listSelectedType.value
                                            .contains(e.toUpperCase()),
                                        onChanged: () {
                                          controller
                                              .updateChecklist(e.toUpperCase());
                                        },
                                      ),
                                    )
                                    .toList(),
                              ),
                            );
                          }),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Obx(() {
                                return Text(
                                  controller.selectedListNodeData.value?.length
                                          .toString() ??
                                      '0',
                                  style: Get.textTheme.bodyMedium!.copyWith(
                                    fontSize: isUnfolded
                                        ? 14
                                        : (isSmallScreen ? 14 : 14),
                                  ),
                                );
                              }),
                              SizedBox(width: Sizes.s4),
                              SvgPicture.asset(
                                AssetConstant.stasiunIcon,
                                width: isUnfolded
                                    ? Sizes.s12
                                    : (isSmallScreen ? Sizes.s14 : Sizes.s18),
                                height: isUnfolded
                                    ? Sizes.s12
                                    : (isSmallScreen ? Sizes.s14 : Sizes.s18),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: Sizes.s12),
                      Obx(() {
                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final item =
                                controller.selectedListNodeData.value?[index];
                            return GestureDetector(
                              onTap: () => Get.toNamed(
                                DetailKotaPage.routeName,
                                arguments: {
                                  'title': title,
                                  'data': item,
                                  'isRoutine': controller.isRoutine.value,
                                  'event': controller.currentEvent.value,
                                  'selectedFilter':
                                      controller.selectedFilter.value,
                                  'selectedDateRange':
                                      controller.selectedRoutineRange.value,
                                  'moda': modaType,
                                  'hideDeparture': hideDeparture,
                                  'parentCity':
                                      controller.provinceData.value?.name,
                                },
                              ),
                              child: Container(
                                color: Colors.transparent,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: isUnfolded
                                          ? Sizes.s20
                                          : (isSmallScreen
                                              ? Sizes.s16
                                              : Sizes.s20),
                                      child: Text(
                                        "${index + 1}.",
                                        style:
                                            Get.textTheme.labelLarge!.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: isUnfolded
                                              ? 14
                                              : (isSmallScreen ? 12 : 14),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                item?.name ?? '-',
                                                style: Get.textTheme.labelLarge!
                                                    .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: isUnfolded
                                                      ? 14
                                                      : (isSmallScreen
                                                          ? 12
                                                          : 14),
                                                ),
                                              ),
                                              Obx(
                                                () {
                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        controller
                                                                .isComing.value
                                                            ? item?.arrival
                                                                    ?.toDotSeparated() ??
                                                                '0'
                                                            : item?.departure
                                                                    ?.toDotSeparated() ??
                                                                '0',
                                                        style: Get.textTheme
                                                            .titleSmall!
                                                            .copyWith(
                                                          fontSize: isUnfolded
                                                              ? 14
                                                              : (isSmallScreen
                                                                  ? 12
                                                                  : 14),
                                                        ),
                                                      ),
                                                      SizedBox(width: Sizes.s4),
                                                      SvgPicture.asset(
                                                        AssetConstant
                                                            .peopleIcon,
                                                        width: Sizes.s12,
                                                        height: Sizes.s12,
                                                      ),
                                                    ],
                                                  );
                                                },
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "${modaType?.name == 'jalan' ? 'TT${item?.type}  | ' : ''}${item?.city ?? '-'}",
                                                style: Get
                                                    .textTheme.labelMedium!
                                                    .copyWith(
                                                  color: AppColors.navyColor,
                                                  fontSize: isUnfolded
                                                      ? 14
                                                      : (isSmallScreen
                                                          ? 12
                                                          : 14),
                                                ),
                                              ),
                                              Obx(() {
                                                return Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      controller.isComing.value
                                                          ? item!.vehicleArrival
                                                                  ?.toDotSeparated() ??
                                                              '0'
                                                          : item?.vehicleDeparture
                                                                  ?.toDotSeparated() ??
                                                              '0',
                                                      style: Get
                                                          .textTheme.titleSmall!
                                                          .copyWith(
                                                        fontSize: isUnfolded
                                                            ? 14
                                                            : (isSmallScreen
                                                                ? 14
                                                                : 14),
                                                      ),
                                                    ),
                                                    SizedBox(width: Sizes.s4),
                                                    SvgPicture.asset(
                                                      getIcon(modaType),
                                                      width: isUnfolded
                                                          ? Sizes.s12
                                                          : (isSmallScreen
                                                              ? Sizes.s14
                                                              : Sizes.s12),
                                                      height: isUnfolded
                                                          ? Sizes.s12
                                                          : (isSmallScreen
                                                              ? Sizes.s14
                                                              : Sizes.s12),
                                                    ),
                                                  ],
                                                );
                                              })
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(height: Sizes.s8),
                          itemCount:
                              controller.selectedListNodeData.value?.length ??
                                  0,
                        );
                      }),
                      SizedBox(height: Sizes.s24),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(DetailMapsPage.routeName, arguments: {
                              'title': title,
                              'data': controller.selectedListNodeData.value
                                  ?.map(
                                    (e) => MarkerItem(
                                      latitude:
                                          double.tryParse(e.latitude ?? '') ??
                                              0,
                                      longitude:
                                          double.tryParse(e.longitude ?? '') ??
                                              0,
                                      markerId: '${e.city} - ${e.type}',
                                      title: e.name,
                                    ),
                                  )
                                  .toList(),
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(Sizes.s10),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(Sizes.s6),
                            ),
                            child: Icon(
                              Icons.map_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Obx(() {
            return Visibility(
              visible: controller.isLoadingRegionalData.value,
              child: Positioned.fill(
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

  Widget _buildMobilitySection(
      {required BuildContext context,
      required ModaType modaType,
      bool hideDeparture = false}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildGraphCard(
          context: context,
          modaType: modaType,
          hideDeparture: hideDeparture,
        ),
        Obx(() {
          return Visibility(
            visible: !controller.isLoadingRegionalData.value &&
                controller.currentTrafficData.value != null,
            child: _buildNavigationArrows(),
          );
        }),
      ],
    );
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
          },
        );
      }
      return _buildArrow(
        right: 9,
        asset: 'assets/icons/slidekanan.svg',
        onTap: () {
          controller.showMobilitasPenumpang.value = false;
        },
      );
    });
  }

  Widget _filterItem({
    required BuildContext context,
    required String label,
    required String value,
    required bool checked,
    void Function()? onChanged,
  }) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: Sizes.s14,
          width: Sizes.s14,
          child: Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.s4),
            ),
            side: BorderSide(color: AppColors.blackColor),
            value: checked,
            onChanged: (value) {
              onChanged?.call();
            },
          ),
        ),
        SizedBox(width: Sizes.s6),
        Text(
          label,
          style: Get.textTheme.bodySmall!.copyWith(
            fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 14),
          ),
        ),
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

  Widget _buildGraphCard(
      {required BuildContext context,
      required ModaType modaType,
      bool hideDeparture = false}) {
    return Obx(() {
      final title = controller.showMobilitasPenumpang.value
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
            _buildGraphContent(
              context: context,
              modaType: modaType,
              hideDeparture: hideDeparture,
            ),
          ],
        ),
      );
    });
  }

  Widget _buildGraphContent(
      {required BuildContext context,
      required ModaType modaType,
      bool hideDeparture = false}) {
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
            _buildChartBar(hideDeparture: hideDeparture),
            _buildGraphLegend(
              context: context,
              modaType: modaType,
              hideDeparture: hideDeparture,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChartBar({bool hideDeparture = false}) {
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
      ].every((list) => list?.isEmpty ?? true);

      if (isEmpty) {
        return SizedBox(
          height: 200,
          child: Center(
            child: Text('Tidak ada data '),
          ),
        );
      }

      final maxValue = _calculateChartMaxValue(trafficData);

      return SizedBox(
        height: 200,
        child: SfCartesianChart(
          plotAreaBorderColor: Colors.transparent,
          primaryXAxis: _buildChartXAxis(),
          primaryYAxis: _buildChartYAxis(maxValue),
          series: _buildChartSeries(trafficData, hideDeparture: hideDeparture),
        ),
      );
    });
  }

  List<CartesianSeries<ChartData, String>> _buildChartSeries(
      dynamic trafficData,
      {bool hideDeparture = false}) {
    return <CartesianSeries<ChartData, String>>[
      LineSeries<ChartData, String>(
        name: "Berangkat",
        dataSource: !controller.showMobilitasPenumpang.value
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
        // xValueMapper: (ChartData data, _) => '(${data.label.chartYLabel})',
        yValueMapper: (ChartData data, _) => data.value,
        color: AppColors.chartColor,
        markerSettings: const MarkerSettings(
          isVisible: true,
          color: AppColors.chartColor,
        ),
      ),
      if (!hideDeparture)
        LineSeries<ChartData, String>(
          name: "Tiba",
          dataSource: !controller.showMobilitasPenumpang.value
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
          // xValueMapper: (ChartData data, _) => '(${data.label.chartYLabel})',
          yValueMapper: (ChartData data, _) => data.value,
          color: AppColors.violetColor,
          markerSettings: const MarkerSettings(
            isVisible: true,
            color: AppColors.violetColor,
          ),
        ),
    ];
  }

  double _calculateChartMaxValue(TrafficData trafficData) {
    double maxValue;
    if (!controller.showMobilitasPenumpang.value) {
      final departures = (trafficData.vehicleDeparture ?? [])
          .map((e) => e.value)
          .fold(0.0, (prev, element) => max(prev, element));
      final arrivals = (trafficData.vehicleArrival ?? [])
          .map((e) => e.value)
          .fold(0.0, (prev, element) => max(prev, element));
      maxValue = max(departures, arrivals);
    } else {
      final departures = (trafficData.departure ?? [])
          .map((e) => e.value)
          .fold(0.0, (prev, element) => max(prev, element));
      final arrivals = (trafficData.arrival ?? [])
          .map((e) => e.value)
          .fold(0.0, (prev, element) => max(prev, element));
      maxValue = max(departures, arrivals);
    }
    return maxValue > 0 ? maxValue : 1.0;
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
      axisLabelFormatter: (value) {
        return ChartAxisLabel(
          double.tryParse(value.text)?.toInt().toDotSeparated() ?? value.text,
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
    );
  }

  Widget _buildLegendItem({
    required BuildContext context,
    required bool isVehicle,
    required Color color,
    required String value,
    required String label,
    required ModaType moda,
  }) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Row(
      children: [
        SvgPicture.asset(
          isVehicle ? getIcon(moda) : AssetConstant.userGroup,
          width: 14,
          height: 14,
          color: color,
        ),
        const SizedBox(width: 4),
        Text(
          value,
          style: Get.textTheme.labelMedium!.copyWith(
              color: color,
              fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 14)),
        ),
        const SizedBox(width: 2),
        Text(
          label,
          style: Get.textTheme.labelMedium!
              .copyWith(fontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 14)),
        ),
      ],
    );
  }

  Widget _buildGraphLegend(
      {required BuildContext context,
      required ModaType modaType,
      bool hideDeparture = false}) {
    return Obx(() {
      final trafficData = controller.currentTrafficData.value;
      if (trafficData == null) return const SizedBox.shrink();

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLegendItem(
            context: context,
            isVehicle: !controller.showMobilitasPenumpang.value,
            color: AppColors.secondaryColor,
            value: _calculateTotal(
              !controller.showMobilitasPenumpang.value
                  ? trafficData.vehicleDeparture
                  : trafficData.departure,
            ),
            label: 'Berangkat',
            moda: modaType,
          ),
          if (!hideDeparture) ...[
            const SizedBox(width: 20),
            _buildLegendItem(
              context: context,
              isVehicle: !controller.showMobilitasPenumpang.value,
              color: AppColors.violetColor,
              value: _calculateTotal(
                !controller.showMobilitasPenumpang.value
                    ? trafficData.vehicleArrival
                    : trafficData.arrival,
              ),
              label: 'Tiba',
              moda: modaType,
            ),
          ]
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
}
