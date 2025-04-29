import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/komparasi/components/add_komparasi.dart';
import 'package:strategi_hub_app/modules/komparasi/components/expandable_komparasi.dart';
import 'package:strategi_hub_app/modules/komparasi/controllers/komparasi_controller.dart';
import 'package:strategi_hub_app/modules/main_menu/components/header_filter.dart';

class KomparasiPage extends GetView<KomparasiController> {
  static const routeName = '/komparasi-page';
  const KomparasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderFilter(
            isRutin: controller.isRoutine,
            onSelectedDate: controller.updateFilterDate,
            rangeGroupvalue: controller.selectedFilter,
            initialDates: controller.selectedRoutineRange,
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
          SizedBox(height: Sizes.s12),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                  () => ReorderableListView(
                    proxyDecorator: (child, index, animation) {
                      return Container(
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor.withOpacity(0.01),
                        ),
                        child: child,
                      );
                    },
                    buildDefaultDragHandles: true,
                    onReorder: (oldIndex, newIndex) {
                      controller.reorderData(oldIndex, newIndex);
                    },
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    anchor: 0,
                    children: controller.listKomparasi.value
                        .asMap()
                        .entries
                        .map((entry) {
                      final int index = entry.key;
                      final element = entry.value;

                      return ExpandableKomparasi(
                        key: ValueKey(
                            element.comparisonTitle + index.toString()),
                        index: index,
                        data: element,
                        listSimpul: controller
                            .getListSimpul(element.comparisonTitle)
                            .where(
                              (e) =>
                                  e.idLokasi !=
                                  element.currentLocation.idLokasi,
                            )
                            .toList(),
                      );
                    }).toList(),
                  ),
                ),
                AddKomparasi(),
                SizedBox(height: Sizes.s100),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
