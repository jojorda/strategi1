import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/custom_tabbar.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/Agregat/view/perkeretaapian_agregat_page.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/kecelakaan/views/perkeretaapian_kecelakaan_page.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/controllers/perkeretaapian_controller.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/kejadian_menonjol/views/perkeretaapian_kejadian_menonjol_page.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/od/views/perkeretaapian_od_page.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/operator/views/perkeretaapian_operator_page.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/wilayah/views/perkeretaapian_wilayah_page.dart';
import 'package:strategi_hub_app/utils/extentions/enum_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/simpul/view/perkeretaapian_simpul.dart';

class PerkeretaapianPage extends GetView<PerkeretaapianController> {
  const PerkeretaapianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  if (hasPermission(Permission.perkeretaapianAgregat))
                    PerkeretaapianAgregat(),
                  PerkeretaapianWilayahPage(),
                  PerkeretaapianSimpul(),
                  if (hasPermission(Permission.perkeretaapianOD))
                    PerkeretaapianOdPage(),
                  if (hasPermission(Permission.perkeretaapianOperator))
                    PerkeretaapianOperatorPage(),
                  if (hasPermission(Permission.perkeretaapianKecelakaan))
                    PerkeretaapianKecelakaan(),
                  PerkeretaapianKeadaanMenongol(),
                ],
              ),
            ),
            SizedBox(height: Sizes.s10),
            CustomTabBar(
                controller: controller.tabController,
                data: controller
                    .getMenuList()
                    .map((e) => e.formattedName)
                    .toList(),
                onTap: (index) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  controller.selectedIndex.value = index;
                  controller.update();
                },
                selectedIndex: controller.selectedIndex.value),
            SizedBox(height: Sizes.s12),
          ],
        ),
      ),
    );
  }
}
