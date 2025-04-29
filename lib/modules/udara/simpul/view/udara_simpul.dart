import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/empty_state.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:pagination_flutter/pagination.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';
import 'package:strategi_hub_app/utils/extentions/string_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/modules/udara/controllers/udara_controller.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';

class UdaraSimpul extends GetView<UdaraController> {
  static const routeName = '/udara-simpul';
  final TextEditingController searchController = TextEditingController();
  final RxString selectedTerminal = RxString('');
  final RxBool showPaginatedView = RxBool(false);
  final RxInt currentPage = RxInt(1);
  
  UdaraSimpul({super.key});

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
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: DropdownButton<String>(
                                      value: "Semua Provinsi",
                                      isExpanded: true,
                                      hint: Text(
                                        "Semua Provinsi",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                        ),
                                      ),
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                      items: [
                                        "Semua Provinsi",
                                        "Jawa Tengah",
                                        "Jawa Barat",
                                        "Jawa Timur"
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? value) {},
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextField(
                                  controller: searchController,
                                  onChanged: (value) {
                                    // controller.searchSimpul(value);
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Cari Simpul",
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                    suffixIcon: const Icon(Icons.search, size: 20, color: Colors.grey),
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                                  ),
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        _buildTransportationNodeList(context),
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

  Widget _buildLegendItem({
    required bool isVehicle,
    required Color color,
    required String value,
    required String label,
  }) {
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
          style:
              Get.textTheme.labelMedium!.copyWith(color: color, fontSize: 10),
        ),
        const SizedBox(width: 2),
        Text(label,
            style: Get.textTheme.labelMedium!
                .copyWith(color: color, fontSize: 10)),
      ],
    );
  }

  List<CartesianSeries<ChartData, String>> _getDummyChartSeries() {
    final List<ChartData> departureData = [
      ChartData(label: "Jan", value: 300),
      ChartData(label: "Feb", value: 450),
      ChartData(label: "Mar", value: 600),
      ChartData(label: "Apr", value: 500),
      ChartData(label: "Mei", value: 700),
    ];

    final List<ChartData> arrivalData = [
      ChartData(label: "Jan", value: 400),
      ChartData(label: "Feb", value: 550),
      ChartData(label: "Mar", value: 500),
      ChartData(label: "Apr", value: 600),
      ChartData(label: "Mei", value: 800),
    ];

    return <CartesianSeries<ChartData, String>>[
      LineSeries<ChartData, String>(
        name: "Berangkat",
        dataSource: departureData,
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
        dataSource: arrivalData,
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

  List<AggregateChartData>? _getSortedAggregateData() {
    final list = controller.currentAggregateData.value?.chart;
    if (list == null) return null;
    final res = List<AggregateChartData>.from(list)
      ..sort((a, b) => controller.showAlternateAggregateData.value
          ? (b.departure ?? 0).compareTo(a.departure ?? 0)
          : (b.arrival ?? 0).compareTo(a.arrival ?? 0));
    return res.take(10).toList();
  }

  double _calculateMaxValue(List<AggregateChartData> chartData) {
    if (chartData.isEmpty) {
      return 100;
    }
    return chartData
        .map((e) =>
            (controller.showAlternateAggregateData.value
                ? e.departure
                : e.arrival) ??
            0)
        .fold(1, max)
        .toDouble();
  }

  Widget _buildAggregateCartesianChart(
      List<AggregateChartData> chartData, double maxValue) {
    if (chartData.isEmpty) {
      return const SizedBox(
        height: 300,
        child: Center(
          child: Text('Tidak ada data'),
        ),
      );
    }

    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        axisLabelFormatter: (value) {
          return ChartAxisLabel(
            value.text ?? "",
            value.textStyle,
          );
        },
        majorGridLines: const MajorGridLines(width: 0),
        labelStyle: const TextStyle(
          fontSize: 9,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        labelAlignment: LabelAlignment.center,
        maximumLabelWidth: 80,
        axisLine: const AxisLine(width: 0),
        labelIntersectAction: AxisLabelIntersectAction.wrap,
      ),
      primaryYAxis: NumericAxis(
        axisLabelFormatter: (value) {
          return ChartAxisLabel(
            double.tryParse(value.text ?? "0")?.toInt().toDotSeparated() ?? value.text ?? "0",
            value.textStyle,
          );
        },
        maximum: maxValue.roundUp50k(),
        minimum: 0,
        interval: maxValue.roundUp50k() / 5,
        majorGridLines: const MajorGridLines(width: 0),
        labelStyle: const TextStyle(
          fontSize: 10,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        axisLine: const AxisLine(width: 0),
        numberFormat: NumberFormat.decimalPattern('id_ID'),
      ),
      series: <CartesianSeries<AggregateChartData, String>>[
        StackedBarSeries<AggregateChartData, String>(
          dataSource: _sortChartData(chartData),
          xValueMapper: (data, _) => data.name ?? "",
          yValueMapper: (data, _) => controller.showAlternateAggregateData.value
              ? (data.departure ?? 0)
              : (data.arrival ?? 0),
          name: 'Berangkat',
          color: controller.showAlternateAggregateData.value
              ? AppColors.chartColor
              : Colors.pink,
        ),
      ],
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  List<AggregateChartData> _sortChartData(List<AggregateChartData> chartData) {
    final res = List<AggregateChartData>.from(chartData)
      ..sort((a, b) => controller.showAlternateAggregateData.value
          ? (b.departure ?? 0).compareTo(a.departure ?? 0)
          : (b.arrival ?? 0).compareTo(a.arrival ?? 0));
    return res.take(10).toList().reversed.toList();
  }

  Widget _buildTransportationNodeList(BuildContext context) {
    return Obx(() {
      final terminalValue = selectedTerminal.value;
      if (terminalValue.isNotEmpty) {
        return _buildTerminalDetail();
      }
      if (showPaginatedView.value) {
        return _buildPaginatedTerminalList();
      }
      final screenWidth = MediaQuery.of(context).size.width;
      final screenHeight = MediaQuery.of(context).size.height;
      final isSmallScreen = screenHeight < 700 || screenWidth < 380;
      final isUnfolded = screenWidth > 600;
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Simpul Transportasi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      'Angkutan Udara | Semua Provinsi',
                      style: TextStyle(
                        fontSize: isUnfolded ? 12 : isSmallScreen ? 10 : 12,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: isUnfolded ? 10 : isSmallScreen ? 8 : 10,
                              height: isUnfolded ? 10 : isSmallScreen ? 8 : 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                            const SizedBox(width: 4),
                             Text(
                              'Berangkat',
                              style: TextStyle(
                                fontSize: isUnfolded ? 12 : isSmallScreen ? 10 : 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Row(
                          children: [
                            Container(
                              width: isUnfolded ? 10 : isSmallScreen ? 8 : 10,
                              height: isUnfolded ? 10 : isSmallScreen ? 8 : 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.violetColor,
                              ),
                            ),
                            const SizedBox(width: 4),
                             Text(
                              'Tiba',
                              style: TextStyle(
                                fontSize: isUnfolded ? 12 : isSmallScreen ? 10 : 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          _buildTerminalSection(
              "Bandara Domestik",
            [
              _NodeData("Soekarno-Hatta", "31.816", "172", "55.216", "124"),
              _NodeData("Halim Perdanakusuma", "31.816", "172", "55.216", "124"),
              _NodeData("Budiarto", "31.816", "172", "55.216", "124"),
              _NodeData("Wiladtika", "31.816", "172", "55.216", "124"),
            ],
            ),
            const SizedBox(height: 8),
            _buildTerminalSection(
              "Bandara Internasional",
              [], // Empty list since there's no data
            ),
        ],
      );
    });
  }

  Widget _buildTerminalDetail() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => selectedTerminal.value = '',
                    ),
                    Text(
                      selectedTerminal.value,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Bandara Internasional | Kota Tangerang",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 1),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              _buildMobilitasSection(isPenumpang: true),
              const SizedBox(height: 16),
              _buildMobilitasSection(isPenumpang: false),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobilitasSection({required bool isPenumpang}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
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
                  isPenumpang ? 'Mobilitas Penumpang' : 'Mobilitas Sarana',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _buildMobilitasGraphContent(isPenumpang: isPenumpang),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobilitasGraphContent({required bool isPenumpang}) {
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
            _buildMobilitasChartBar(isPenumpang: isPenumpang),
            _buildMobilitasGraphLegend(isPenumpang: isPenumpang),
          ],
        ),
      ),
    );
  }

  Widget _buildMobilitasGraphLegend({required bool isPenumpang}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildLegendItem(
          isVehicle: !isPenumpang,
          color: AppColors.secondaryColor,
          value: isPenumpang ? "1,234" : "172",
          label: 'Berangkat',
        ),
        const SizedBox(width: 20),
        _buildLegendItem(
          isVehicle: !isPenumpang,
          color: AppColors.violetColor,
          value: isPenumpang ? "5,678" : "124",
          label: 'Tiba',
        ),
      ],
    );
  }

  Widget _buildMobilitasChartBar({required bool isPenumpang}) {
    return SizedBox(
      height: 200,
      child: SfCartesianChart(
        plotAreaBorderColor: Colors.transparent,
        primaryXAxis: CategoryAxis(
          majorGridLines: const MajorGridLines(width: 0),
          labelStyle: TextStyle(
            fontSize: 7,
            color: Colors.black,
          ),
          interval: 1,
        ),
        primaryYAxis: NumericAxis(
          minimum: 0,
          maximum: isPenumpang ? 1000 : 200,
          interval: isPenumpang ? 200 : 40,
          majorGridLines: MajorGridLines(
            width: 1,
            color: AppColors.lightGreyColor,
          ),
          labelStyle: TextStyle(
            fontSize: 7,
            color: Colors.black,
          ),
        ),
        series: _getMobilitasChartSeries(isPenumpang: isPenumpang),
      ),
    );
  }

  List<CartesianSeries<ChartData, String>> _getMobilitasChartSeries({required bool isPenumpang}) {
    final List<ChartData> departureData = isPenumpang ? [
      ChartData(label: "Jan", value: 300),
      ChartData(label: "Feb", value: 450),
      ChartData(label: "Mar", value: 600),
      ChartData(label: "Apr", value: 500),
      ChartData(label: "Mei", value: 700),
    ] : [
      ChartData(label: "Jan", value: 50),
      ChartData(label: "Feb", value: 80),
      ChartData(label: "Mar", value: 120),
      ChartData(label: "Apr", value: 90),
      ChartData(label: "Mei", value: 150),
    ];

    final List<ChartData> arrivalData = isPenumpang ? [
      ChartData(label: "Jan", value: 400),
      ChartData(label: "Feb", value: 550),
      ChartData(label: "Mar", value: 500),
      ChartData(label: "Apr", value: 600),
      ChartData(label: "Mei", value: 800),
    ] : [
      ChartData(label: "Jan", value: 60),
      ChartData(label: "Feb", value: 90),
      ChartData(label: "Mar", value: 100),
      ChartData(label: "Apr", value: 110),
      ChartData(label: "Mei", value: 160),
    ];

    return <CartesianSeries<ChartData, String>>[
      LineSeries<ChartData, String>(
        name: "Berangkat",
        dataSource: departureData,
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
        dataSource: arrivalData,
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

  Widget _buildTerminalSection(String title, List<_NodeData> nodes) {
    final screenHeight = MediaQuery.of(Get.context!).size.height;
    final screenWidth = MediaQuery.of(Get.context!).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Theme(
        data: Theme.of(Get.context!).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: isUnfolded ? 15 : (isSmallScreen ? 12 : 14),
              fontWeight: FontWeight.w700,
              color: Colors.black
            ),
          ),
          children: [
            if (nodes.isEmpty)
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Tidak ada data",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              )
            else ...[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                color: Colors.grey.shade100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 32,
                      child: Text(
                        "No",
                        style: TextStyle(
                          fontSize: isUnfolded ? 15 : (isSmallScreen ? 12 : 15),
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Simpul",
                        style: TextStyle(
                          fontSize: isUnfolded ? 15 : (isSmallScreen ? 12 : 15),
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            AssetConstant.userGroup,
                            height: 18,
                            width: 18,
                          ),
                          const SizedBox(width: 40),
                          SvgPicture.asset(
                            AssetConstant.planeIcon,
                            height: 18,
                            width: 18,
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: nodes.length,
                itemBuilder: (context, index) {
                  final node = nodes[index];
                  return InkWell(
                    onTap: () => selectedTerminal.value = node.name,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 24,
                            child: Text(
                              "${index + 1}",
                              style: TextStyle(fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14),color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              node.name,
                              style: TextStyle(fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14),color: Colors.black),
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    node.departurePassengers,
                                    style: TextStyle(
                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 12),
                                      color: AppColors.secondaryColor,
                                    ),
                                  ),
                                  Text(
                                    node.arrivalPassengers,
                                    style: TextStyle(
                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 12),
                                      color: AppColors.violetColor,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 24),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    node.departureVehicles,
                                    style: TextStyle(
                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 12),
                                      color: AppColors.secondaryColor,
                                    ),
                                  ),
                                  Text(
                                    node.arrivalVehicles,
                                    style: TextStyle(
                                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 12),
                                      color: AppColors.violetColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
            if (nodes.isNotEmpty)
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    showPaginatedView.value = true;
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.secondaryColor,
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), // kecilin padding
                    minimumSize: const Size(0, 28), // atur tinggi jadi lebih kecil
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap, // biar gak ngambil space lebih
                  ),
                  child: const Text(
                    "Lihat Semua", 
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaginatedTerminalList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => showPaginatedView.value = false,
            ),
            const Text(
              'Bandara Domestik',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
          color: Colors.grey.shade100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 32,
                child: Text(
                  "No",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const Expanded(
                child: Text(
                  "Simpul",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                              AssetConstant.userGroup,
                              height: 18,
                              width: 18,
                            ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    children: [
                      SvgPicture.asset(
                            AssetConstant.planeIcon,
                            height: 18,
                            width: 18,
                          ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            final terminals = [
              "Soekarno Hatta",
              "Halim Perdanakusuma",
              "Budiarto",
              "Wiladtika",
              "RadinIntan",
              "Adisucipto",
              "Pattimura",
              "Sentani",
              "Tanjung Mas",
              "Fatmawati"
            ];
            return InkWell(
              onTap: () => selectedTerminal.value = terminals[index],
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    SizedBox(
                      width: 24,
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          terminals[index],
                          style: const TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "31.816",
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                            Text(
                              "56.216",
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.violetColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "172",
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                            Text(
                              "124",
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.violetColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        Obx(() => Pagination(
              numOfPages: 15,
              selectedPage: currentPage.value,
              pagesVisible: 5,
              onPageChanged: (index) {
                currentPage.value = index;
              },
              nextIcon: Icon(
                Icons.chevron_right,
                size: Sizes.s22,
                color: AppColors.blackColor,
              ),
              previousIcon: Icon(
                Icons.chevron_left,
                size: Sizes.s22,
                color: AppColors.blackColor,
              ),
              activeBtnStyle: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                  Size(Sizes.s22, Sizes.s22),
                ),
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                minimumSize: MaterialStatePropertyAll(Size(Sizes.s22, Sizes.s22)),
                backgroundColor: MaterialStateProperty.all(Get.theme.colorScheme.primary),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              inactiveBtnStyle: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                  Size(Sizes.s22, Sizes.s22),
                ),
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                minimumSize: MaterialStatePropertyAll(Size(Sizes.s22, Sizes.s22)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              activeTextStyle: Get.textTheme.bodySmall!.copyWith(color: AppColors.whiteColor),
              inactiveTextStyle: Get.textTheme.bodySmall!.copyWith(color: Color(0xFF919191)),
            )),
      ],
    );
  }
}

class _NodeData {
  final String name;
  final String departurePassengers;
  final String departureVehicles;
  final String arrivalPassengers;
  final String arrivalVehicles;

  _NodeData(
    this.name,
    this.departurePassengers,
    this.departureVehicles,
    this.arrivalPassengers,
    this.arrivalVehicles,
  );
}

class ChartData {
  final String? label;
  final double value;

  ChartData({this.label, required this.value});
}

 