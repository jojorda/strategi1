import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/google_maps_view.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/laut/wilayah/controllers/detail_maps_controller.dart';

class DetailMapsPage extends GetView<DetailMapsController> {
  static const routeName = '/detail-maps';
  const DetailMapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: controller.title.value.toUpperCase(),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s24),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Sizes.s8),
          child: Obx(
            () {
              return GoogleMapsView(
                markers: controller.data.value,
              );
            },
          ),
        ),
      ),
    );
  }
}
