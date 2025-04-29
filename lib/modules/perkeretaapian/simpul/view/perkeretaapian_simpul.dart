import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pagination_flutter/pagination.dart';
import 'package:strategi_hub_app/components/empty_state.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';
import 'package:strategi_hub_app/utils/extentions/string_extentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/controllers/perkeretaapian_controller.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';

class PerkeretaapianSimpul extends GetView<PerkeretaapianController> {
  static const routeName = '/perkeretaapian-simpul';
  final TextEditingController searchController = TextEditingController();
  final RxInt currentPage = 1.obs;
  final RxInt expandedIndex = RxInt(-1);
  final RxString selectedTerminal = RxString('');
  final RxString selectedProvince = RxString("Semua Provinsi");
  
  PerkeretaapianSimpul({super.key});

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
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: Obx(() => DropdownButton<String>(
                                      value: selectedProvince.value,
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
                                      onChanged: (String? value) {
                                        if (value != null) {
                                          selectedProvince.value = value;
                                        }
                                      },
                                    )),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextField(
                                  controller: searchController,
                                  onChanged: (value) {
                                    // Handle search text changes here
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

  Widget _buildTransportationNodeList(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Obx(() {
      final terminalValue = selectedTerminal.value;
      return terminalValue.isEmpty 
        ? Column(
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
                        'Stasiun Kereta Api | Semua Provinsi',
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
              "Stasiun Kereta Api | Semua Provinsi",
              [
                _NodeData("Stasiun Bekasi", "31.816", "172", "56.216", "124"),
                _NodeData("Stasiun Gambir", "31.816", "172", "56.216", "124"),
                _NodeData("Stasiun Surabaya", "31.816", "172", "56.216", "124"),
                _NodeData("Stasiun Yogyakarta", "31.816", "172", "56.216", "124"),
                _NodeData("Stasiun Solo Balapan", "31.816", "172", "56.216", "124"),
                _NodeData("Stasiun Pasar Senen", "31.816", "172", "56.216", "124"),
                _NodeData("Stasiun Purwokerto", "31.816", "172", "56.216", "124"),
                _NodeData("Stasiun Cirebon", "31.816", "172", "56.216", "124"),
                _NodeData("Stasiun Madiun", "31.816", "172", "56.216", "124"),
              ],
              context,
            ),
            const SizedBox(height: 8),
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
        )
        : _buildTerminalDetail();
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
                  "Stasiun Kereta Api | Kota Bekasi",
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

  Widget _buildTerminalSection(String title, List<_NodeData> nodes, BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "No",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 32),
                Expanded(
                  child: Text(
                    "Simpul",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                    padding: const EdgeInsets.only(right: 13.0),
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
                    SizedBox(width: 32),
                    SvgPicture.asset(
                      AssetConstant.trainIcon,
                      height: 16,
                      width: 16,
                      color: Colors.black,
                    ),
                  ],
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
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: index == nodes.length - 1 ? Colors.transparent : Colors.grey.shade300,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 24,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          "${index + 1}",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: isUnfolded ? 23.0 : (isSmallScreen ? 12.0 : 12.0)),
                        child: Text(
                          node.name,
                          style: TextStyle(fontSize: 12),
                        ),
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
                                fontSize: 12,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                            Text(
                              node.arrivalPassengers,
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.violetColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 32),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              node.departureVehicles,
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                            Text(
                              node.arrivalVehicles,
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
              ));
            },
          ),
        ],
      ),
    );
  }

  List<CartesianSeries<ChartData, String>> _getMobilitasChartSeries({required bool isPenumpang}) {
    // Create dummy data
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
}

class _NodeData {
  final String name;
  final String departurePassengers;
  final String departureVehicles;
  final String arrivalPassengers;
  final String arrivalVehicles;
  final List<ChartData> mobilityData;

  _NodeData(
    this.name,
    this.departurePassengers,
    this.departureVehicles,
    this.arrivalPassengers,
    this.arrivalVehicles,
  ) : mobilityData = List.generate(24, (index) {
    // Generate sample mobility data for 24 hours
    return ChartData(
      label: index.toString().padLeft(2, '0'),
      value: (100 + Random().nextInt(200)).toDouble(),
    );
  });
}
