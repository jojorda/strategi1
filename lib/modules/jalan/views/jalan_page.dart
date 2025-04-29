import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/custom_tabbar.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/modules/jalan/Agregat/view/jalan_agregat_page.dart';
import 'package:strategi_hub_app/modules/jalan/simpul/view/jalan_simpul.dart';
import 'package:strategi_hub_app/modules/jalan/keadaan_menongol/Views/jalan_keadaan_menonjol_page.dart';
import 'package:strategi_hub_app/modules/jalan/kecelakaan/views/jalan_kecelakaan_page.dart';
import 'package:strategi_hub_app/modules/jalan/controllers/jalan_controller.dart';
import 'package:strategi_hub_app/modules/jalan/od/views/jalan_od_page.dart';
import 'package:strategi_hub_app/modules/jalan/wilayah/views/jalan_wilayah_page.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/jalan_operator_page.dart';
import 'package:strategi_hub_app/utils/extentions/enum_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';
import 'package:strategi_hub_app/modules/jalan/Korlantas/views/jalan_korlantas_Page.dart';
import 'package:strategi_hub_app/modules/main_menu/models/main_menu_argument.dart';

class JalanPage extends GetView<JalanController> {
  const JalanPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create controller if not registered yet
    if (!Get.isRegistered<JalanController>()) {
      try {
        // Try to get argument from MainMenuPage
        MainMenuArgument? mainMenuArg;
        try {
          mainMenuArg = Get.find<MainMenuArgument>(tag: 'main_menu_argument');
        } catch (e) {
          print("No main menu argument found: $e");
          // Try to get from arguments
          if (Get.arguments is MainMenuArgument) {
            mainMenuArg = Get.arguments as MainMenuArgument;
          }
        }

        // Create controller with arguments if available
        final controller = Get.put(JalanController(
          Get.find<ModaRepository>(),
          Get.find<StrategiRepository>(),
        ));

        // Set argument if available
        if (mainMenuArg != null) {
          controller.menuArgument.value = mainMenuArg;

          // Force proper tab selection if jalanEnum is specified
          if (mainMenuArg.jalanEnum != null) {
            Future.delayed(Duration.zero, () {
              final index =
                  controller.getSelectedIndex(mainMenuArg!.jalanEnum!);
              print(
                  "Setting tab index to $index for enum ${mainMenuArg.jalanEnum}");
              controller.selectedIndex.value = index;
              controller.tabController.animateTo(index);
            });
          }
        }
      } catch (e) {
        print("Error initializing JalanController: $e");
        Get.put(JalanController(Get.find(), Get.find()));
      }
    } else {
      // If controller already exists but we have new arguments
      if (Get.arguments is MainMenuArgument) {
        final controller = Get.find<JalanController>();
        final mainMenuArg = Get.arguments as MainMenuArgument;

        if (mainMenuArg.jalanEnum != null) {
          controller.menuArgument.value = mainMenuArg;

          // Set the correct tab after a short delay to allow UI to build
          Future.delayed(Duration.zero, () {
            final index = controller.getSelectedIndex(mainMenuArg.jalanEnum!);
            controller.selectedIndex.value = index;
            controller.tabController.animateTo(index);
          });
        }
      }
    }

    return Obx(
      () => SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  if (hasPermission(Permission.jalanAgregat)) JalanAgregat(),
                  if (hasPermission(Permission.jalanWilayah))
                    JalanWilayahPage(),
                  JalanSimpul(),
                  if (hasPermission(Permission.jalanOD)) JalanOdPage(),
                  if (hasPermission(Permission.jalanOperator))
                    JalanOperatorPage(),
                  if (hasPermission(Permission.jalanKecelakaan))
                    JalanKecelakaan(),
                  if (hasPermission(Permission.jalanKejadianMenonjol))
                    JalanKeadaanMenongol(),
                  JalanKorlantas(),
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
            // Text(controller.selectedIndex.value.toString())
          ],
        ),
      ),
    );
  }
}
