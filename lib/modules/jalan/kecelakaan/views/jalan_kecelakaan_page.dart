import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/modules/jalan/kecelakaan/views/detail_kecelakaan.dart';
import 'package:strategi_hub_app/modules/jalan/controllers/jalan_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class JalanKecelakaan extends GetView<JalanController> {
  const JalanKecelakaan({super.key});

  @override
  Widget build(BuildContext context) {
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
                  final list = controller.listIncidentData.value;
                  if (list == null || list.isEmpty) {
                    return Center(
                      child: Text('No data available'),
                    );
                  }
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final item = list[index];
                      return AccidentCard(
                        id: item.id ?? '',
                        date: DateFormat('EEEE, dd MMMM yyyy', 'id_ID')
                            .tryFormat(item.incidentTime),
                        title: item.name ?? '-',
                        location: item.location ?? '-',
                        type: item.accidentType ?? '',
                        imageUrl: 'assets/images/Image.png',
                        comments: item.fatalities ?? 0,
                        shares: (item.minorInjuries ?? 0) +
                            (item.moderateInjuries ?? 0) +
                            (item.seriousInjuries ?? 0),
                      );
                    },
                    itemCount: list.length,
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccidentCard extends StatelessWidget {
  final String id;
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
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          AccidentReportPage.routeName,
          arguments: id,
        );
      },
      child: SizedBox(
        width: double.infinity,
        child: Transform.translate(
          offset: const Offset(0, 3),
          child: Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 6),
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image(
                      width: 90,
                      height: 95,
                      fit: BoxFit.cover,
                      image: imageUrl.startsWith('http')
                          ? NetworkImage(imageUrl)
                          : AssetImage(imageUrl) as ImageProvider,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error,
                            size: 60, color: Colors.red);
                      },
                    ),
                  ),
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
                            '$title\n',
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Visibility(
                                visible: type.isNotEmpty,
                                child: Expanded(
                                  child: Chip(
                                    label: Text(
                                      type,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: type == 'Tabrakan'
                                            ? Colors.orange[700]
                                            : type == 'Terguling'
                                                ? Colors.grey[700]
                                                : Colors.red[500],
                                        fontSize: 13,
                                      ),
                                    ),
                                    backgroundColor: type == 'Tabrakan'
                                        ? Colors.orange[50]
                                        : type == 'Terguling'
                                            ? Colors.grey[200]
                                            : Colors.pink[50],
                                    shape: RoundedRectangleBorder(
                                      side:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 8),
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    visualDensity: VisualDensity(vertical: -4),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Image(
                                          image: AssetImage(
                                              'assets/icons/Rip Icons.png'),
                                          width: 20,
                                          height: 20,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          comments.toString(),
                                          style: const TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/Hansaplast.svg',
                                          height: 20,
                                          width: 20,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          shares.toString(),
                                          style: const TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
