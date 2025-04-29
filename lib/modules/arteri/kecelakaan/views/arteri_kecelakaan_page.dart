import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/modules/arteri/controllers/arteri_controller.dart';
import 'package:strategi_hub_app/modules/jalan/kecelakaan/views/jalan_kecelakaan_page.dart';

import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class ArteriKecelakaan extends GetView<ArteriController> {
  const ArteriKecelakaan({super.key});

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
