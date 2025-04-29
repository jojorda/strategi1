import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/custom_tabbar.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/modules/penyeberangan/Agregat/view/penyeberangan_agregat_page.dart';
import 'package:strategi_hub_app/modules/penyeberangan/Kejadian_Menonjol/Views/penyeberangan_kejadian_menonjol_page.dart';
import 'package:strategi_hub_app/modules/penyeberangan/Kecelakaan/views/penyeberangan_kecelakaan_page.dart';
import 'package:strategi_hub_app/modules/penyeberangan/controllers/penyeberangan_controller.dart';
import 'package:strategi_hub_app/modules/penyeberangan/od/views/penyeberangan_od_page.dart';
import 'package:strategi_hub_app/modules/penyeberangan/operator/views/penyeberangan_operator_page.dart';
import 'package:strategi_hub_app/modules/penyeberangan/wilayah/views/penyeberangan_wilayah_page.dart';
import 'package:strategi_hub_app/utils/extentions/enum_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';
import 'package:strategi_hub_app/modules/penyeberangan/simpul/view/penyeberangan_simpul.dart';

class PenyeberanganPage extends GetView<PenyeberanganController> {
  const PenyeberanganPage({super.key});

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
                  if (hasPermission(Permission.penyebranganAgregat))
                    PenyeberanganAgregat(),
                  PenyeberanganWilayahPage(),
                  PenyeberanganSimpul(),
                  if (hasPermission(Permission.penyebranganOD))
                    PenyeberanganOdPage(),
                  if (hasPermission(Permission.penyebranganOperator))
                    PenyeberanganOperatorPage(),
                  if (hasPermission(Permission.penyebranganKecelakaan))
                    PenyeberanganKecelakaan(),
                  PenyeberanganKeadaanMenongol(),
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
