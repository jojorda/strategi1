import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pagination_flutter/pagination.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/modules/jalan/Korlantas/views/Detail-Korlantas.dart';
import 'package:strategi_hub_app/modules/jalan/controllers/jalan_controller.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';

class JalanKorlantas extends GetView<JalanController> {
  const JalanKorlantas({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            HeaderFilter(
              onSelectedDate: controller.updateIncidentFilterDate,
              rangeGroupvalue: 0.obs,
              selectedDateRange: controller.selectedIncidentDateRange,
              hideRoutineSelection: true,
              isRutin: true.obs,
              initialDates: controller.selectedIncidentRange,
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  controller.fetchData(true);
                },
                child: Obx(() {
                  if (controller.isLoadingKorlantasData.value) {
                    return Center(
                      child: BouncingLoader(),
                    );
                  }

                  final list = controller.listKorlantasData.value;
                  if (list == null || list.isEmpty) {
                    return Center(
                      child: Text('No data available'),
                    );
                  }
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final item = list[index];
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => const DetailJalanKorlantas(),
                              arguments: item);
                        },
                        child: AccidentCard(
                          date: DateFormat('EEEE, dd MMMM yyyy', 'id_ID')
                              .format(DateTime.parse(item.tanggal ??
                                  '')), // date: 'Sabtu, 11 Mei 2024',
                          title: item.apaTerjadi ?? '-',
                          location:
                              '${item.tkpDesa}, ${item.tkpKecamatan}, ${item.tkpKabupaten}, ${item.tkpProvinsi}',
                          type: item.kategoriGk ?? '',
                          imageUrl: 'assets/images/Image.png',
                          comments: 0,
                          shares: 0,
                        ),
                      );
                    },
                    itemCount: list.length,
                  );
                }),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Obx(
                () => Pagination(
                  numOfPages: controller.totalPagesKorlantasData.value,
                  selectedPage: controller.currentPageKorlantasData.value,
                  pagesVisible: 5,
                  onPageChanged: (index) {
                    controller.updateCurrentPageKorlantas(index);
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
                      Size(Sizes.s12, Sizes.s12),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    minimumSize:
                        MaterialStatePropertyAll(Size(Sizes.s12, Sizes.s12)),
                    backgroundColor: MaterialStateProperty.all(
                        Get.theme.colorScheme.primary),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  inactiveBtnStyle: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(Sizes.s12, Sizes.s12),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    minimumSize:
                        MaterialStatePropertyAll(Size(Sizes.s12, Sizes.s12)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  activeTextStyle: Get.textTheme.bodySmall!
                              .copyWith(
                                color: AppColors.whiteColor,
                                fontSize: isUnfolded ? 12 : (isSmallScreen ? 10 : 11),
                              ),
                          inactiveTextStyle: Get.textTheme.bodySmall!
                              .copyWith(
                                color: Color(0xFF919191),
                                fontSize: isUnfolded ? 12 : (isSmallScreen ? 10 : 11),
                              ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccidentCard extends StatelessWidget {
  final String date;
  final String title;
  final String location;
  final String type;
  final String imageUrl;
  final int comments;
  final int shares;

  const AccidentCard({
    super.key,
    required this.date,
    required this.title,
    required this.location,
    required this.type,
    required this.imageUrl,
    required this.comments,
    required this.shares,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Transform.translate(
        offset: const Offset(0, 3),
        child: Card(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 7),
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.grey, width: 0.8),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 8),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          date,
                          style: const TextStyle(
                            fontSize: 9,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                          ),
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 3),
                        Text(
                          location,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                            height: 1.2,
                          ),
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 1),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
