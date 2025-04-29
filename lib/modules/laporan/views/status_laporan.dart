import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pagination_flutter/pagination.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/status_laporan_controller.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';
import 'package:strategi_hub_app/utils/date_utils.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class StatusPelaporanScreen extends GetView<StatusLaporanController> {
  static String routeName = '/status-laporan';

  const StatusPelaporanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return BaseScaffold(
      title: 'STATUS LAPORAN',
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Monitoring Matriks ${controller.modaTypeName}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Data ${controller.modaTypeName}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                HeaderFilter(
                  hideRoutineSelection: true,
                  isRutin: controller.isRoutine,
                  onSelectedDate: controller.updateFilterDate,
                  rangeGroupvalue: controller.selectedFilter,
                  selectedDateRange: controller.selectedDateRange,
                  listEvent: controller.eventList,
                  selectedEvent: controller.currentEvent,
                  eventType: controller.eventType,
                  onSelectedEvent: (event) {
                    controller.currentEvent.value = event;
                    controller.selectedDateRange.value =
                        "${DateFormat('dd MMM yyy').tryFormat(event?.tanggalMulai ?? DateTime.now())} - ${DateFormat('dd MMM yyy').tryFormat(event?.tanggalSelesai ?? DateTime.now())}";
                  },
                  updateEventType: (value) {
                    controller.eventType.value = value;
                  },
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          hintText: 'ANGKUTAN NATARU 2024/2025',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12 // Reduced font size
                              ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1.0),
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.refresh, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                child: Obx(() {
                  if (controller.isLoading.value) {
                    return Center(
                      child: BouncingLoader(),
                    );
                  }

                  final lastIndex = controller.columnHeaders.length - 1;
                  final headers = controller.columnHeaders
                      .asMap()
                      .entries
                      .where((entry) => entry.key < lastIndex - 2)
                      .map((entry) {
                    final column = entry.value;
                    
                    return DataColumn(
                      label: Text(
                        entry.key > 0
                            ? '${column.label ?? ''}\n${DateUtilsHelper.formatDateToIndo(column.value ?? '')}'
                            : column.label.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: isUnfolded ? 12 : isSmallScreen ? 10 : 11,
                        ),
                      ),
                    );
                  }).toList();

                  final itemsPerPage = 10;
                  final currentPage = controller.currentPage.value;
                  final startIndex = (currentPage - 1) * itemsPerPage;
                  final endIndex = startIndex + itemsPerPage;
                  final paginatedList = controller.columnDatas.sublist(
                    startIndex,
                    endIndex > controller.columnDatas.length
                        ? controller.columnDatas.length
                        : endIndex,
                  );

                  return DataTable(
                    columnSpacing: 20,
                    dataRowHeight: 50,
                    headingRowHeight: 60,
                    columns: [DataColumn(label: Text('No')), ...headers],
                    rows: List.generate(paginatedList.length, (index) {
                      final rowData = paginatedList[index];
                      final dataDetail = List.generate(
                        (rowData.detail?.length ?? 0) - 3,
                        (i) {
                          return DataCell(
                            ItemMatrix(
                              status: rowData.detail![i].statusLapor.toString(),
                            ),
                          );
                        },
                      );

                      final no = currentPage == 1
                          ? index + 1
                          : (currentPage - 1) * itemsPerPage + index + 1;

                      return DataRow(
                        cells: [
                          DataCell(Text(no.toString(), style: TextStyle(fontSize: isUnfolded ? 14 : isSmallScreen ? 10 : 12),)),
                          DataCell(Text(rowData.name.toString(), style: TextStyle(fontSize: isUnfolded ? 14 : isSmallScreen ? 10 : 12),)),
                          ...dataDetail
                        ],
                      );
                    }),
                  );
                }),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Obx(
              () => Pagination(
                numOfPages: controller.totalPages.value,
                selectedPage: controller.currentPage.value,
                pagesVisible: 5,
                onPageChanged: (index) {
                  controller.currentPage.value = index;
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
                  minimumSize:
                      MaterialStatePropertyAll(Size(Sizes.s22, Sizes.s22)),
                  backgroundColor:
                      MaterialStateProperty.all(Get.theme.colorScheme.primary),
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
                  minimumSize:
                      MaterialStatePropertyAll(Size(Sizes.s22, Sizes.s22)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                activeTextStyle: Get.textTheme.bodySmall!
                    .copyWith(color: AppColors.whiteColor),
                inactiveTextStyle:
                    Get.textTheme.bodySmall!.copyWith(color: Color(0xFF919191)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemMatrix extends StatelessWidget {
  final String status;

  const ItemMatrix({
    super.key,
    this.status = 'LAPOR',
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    MaterialColor statusColor;
    String statusText;

    switch (status) {
      case 'LAPOR':
        statusColor = Colors.blue;
        statusText = 'L';
      case 'TIDAK_MELAPOR':
        statusColor = Colors.red;
        statusText = 'X';
      default:
        statusColor = Colors.green;
        statusText = 'N';
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: statusColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        statusText,
        style: TextStyle(color: Colors.white, fontSize: isUnfolded ? 12 : isSmallScreen ? 10 : 11),
      ),
    );
  }
}
