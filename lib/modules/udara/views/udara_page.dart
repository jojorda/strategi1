import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/custom_tabbar.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/modules/udara/agregat/view/udara_agregat_page.dart';
import 'package:strategi_hub_app/modules/udara/Kejadian_Menonjol/Views/udara_kejadian_menonjol_page.dart';
import 'package:strategi_hub_app/modules/udara/Kecelakaan/views/udara_kecelakaan_page.dart';
import 'package:strategi_hub_app/modules/udara/controllers/udara_controller.dart';
import 'package:strategi_hub_app/modules/udara/od/views/udara_od_page.dart';
import 'package:strategi_hub_app/modules/udara/operator/views/udara_operator_page.dart';
import 'package:strategi_hub_app/modules/udara/wilayah/views/udara_wilayah_page.dart';
import 'package:strategi_hub_app/utils/extentions/enum_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';
import 'package:strategi_hub_app/modules/udara/simpul/view/udara_simpul.dart';

class UdaraPage extends GetView<UdaraController> {
  const UdaraPage({super.key});

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
                  if (hasPermission(Permission.udaraAgregat))
                    UdaraAgregatPage(),
                  UdaraWilayahPage(),
                  UdaraSimpul(),
                  if (hasPermission(Permission.udaraOD)) UdaraOdPage(),
                  if (hasPermission(Permission.udaraOperator))
                    UdaraOperatorPage(),
                  if (hasPermission(Permission.udaraKecelakaan))
                    UdaraKecelakaan(),
                  UdaraKejadianMenonjol(),
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
