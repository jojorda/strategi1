import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/custom_tabbar.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/modules/laut/agregat/view/laut_agregat_page.dart';
import 'package:strategi_hub_app/modules/laut/controllers/laut_controller.dart';
import 'package:strategi_hub_app/modules/laut/keajadian_menonjol/views/laut_keajadian_menonjol_page.dart';
import 'package:strategi_hub_app/modules/laut/kecelakaan/views/list_kecelakaan_page.dart';
import 'package:strategi_hub_app/modules/laut/od/views/laut_od_page.dart';
import 'package:strategi_hub_app/modules/laut/operator/views/laut_operator_page.dart';
import 'package:strategi_hub_app/modules/laut/wilayah/views/laut_wilayah_page.dart';
import 'package:strategi_hub_app/modules/main_menu/models/main_menu_argument.dart';
import 'package:strategi_hub_app/utils/extentions/enum_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';
import 'package:strategi_hub_app/modules/laut/simpul/view/laut_simpul.dart';

class LautPage extends GetView<LautController> {
  const LautPage({super.key, required this.menuArgument});

  final MainMenuArgument menuArgument;

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
                  if (hasPermission(Permission.lautAgregat)) LautAgregat(),
                  LautWilayahPage(menuArgument: menuArgument),
                  LautSimpul(),
                  if (hasPermission(Permission.lautOD)) LautOdPage(),
                  if (hasPermission(Permission.lautOperator))
                    LautOperatorPage(),
                  if (hasPermission(Permission.lautKecelakaan))
                    LautKecelakaan(),
                  LautKeadaanMenongol(),
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
