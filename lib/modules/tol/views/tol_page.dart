import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/custom_tabbar.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/modules/tol/agregat/view/tol_agregat_page.dart';
import 'package:strategi_hub_app/modules/tol/controllers/tol_controller.dart';
import 'package:strategi_hub_app/modules/tol/kecelakaan/views/tol_kecelakaan_page.dart';
import 'package:strategi_hub_app/modules/tol/operator/views/tol_operator_page.dart';
import 'package:strategi_hub_app/utils/extentions/enum_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';

class TolPage extends GetView<TolController> {
  const TolPage({super.key});

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
                  if (hasPermission(Permission.tolAgregat)) TolAgregat(),
                  if (hasPermission(Permission.tolOperator)) TolOperatorPage(),
                  if (hasPermission(Permission.tolKecelakaan)) TolKecelakaan(),
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
