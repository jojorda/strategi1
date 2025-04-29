import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/custom_tabbar.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/modules/arteri/agregat/view/arteri_agregat_page.dart';
import 'package:strategi_hub_app/modules/arteri/controllers/arteri_controller.dart';
import 'package:strategi_hub_app/modules/arteri/kejadian_menonjol/views/arteri_keajadian_menonjol_page.dart';
import 'package:strategi_hub_app/modules/arteri/kecelakaan/views/arteri_kecelakaan_page.dart';
import 'package:strategi_hub_app/modules/arteri/od/views/arteri_od_page.dart';
import 'package:strategi_hub_app/modules/arteri/operator/views/arteri_operator_page.dart';
import 'package:strategi_hub_app/modules/arteri/wilayah/views/arteri_wilayah_page.dart';
import 'package:strategi_hub_app/modules/main_menu/models/main_menu_argument.dart';
import 'package:strategi_hub_app/utils/extentions/enum_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';

class ArteriPage extends GetView<ArteriController> {
  const ArteriPage({super.key, required this.menuArgument});

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
                  if (hasPermission(Permission.arteriAgregat)) ArteriAgregat(),
                  // ArteriOperatorPage(),
                  if (hasPermission(Permission.arteriKecelakaan))
                    ArteriKecelakaan(),
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
