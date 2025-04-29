import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/custom_tabbar.dart';
import 'package:strategi_hub_app/constant/constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/modules/arteri/views/arteri_page.dart';
import 'package:strategi_hub_app/modules/cctv/views/cctv_page.dart';
import 'package:strategi_hub_app/modules/jalan/views/jalan_page.dart';
import 'package:strategi_hub_app/modules/komparasi/views/komparasi_page.dart';
import 'package:strategi_hub_app/components/Fokus/fokus_screen.dart';
import 'package:strategi_hub_app/modules/laut/views/laut_page.dart';
import 'package:strategi_hub_app/modules/liputan/views/liputan_page.dart';
import 'package:strategi_hub_app/modules/main_menu/controllers/main_menu_controller.dart';
import 'package:strategi_hub_app/modules/thirty_second/views/thirty_second_page.dart';
import 'package:strategi_hub_app/modules/tol/views/tol_page.dart';
import 'package:strategi_hub_app/modules/udara/views/udara_page.dart';
import 'package:strategi_hub_app/modules/penyeberangan/views/penyeberangan_page.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/views/perkeretaapian_page.dart';
import 'package:strategi_hub_app/utils/extentions/enum_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';
import '../models/main_menu_argument.dart';

class MainMenuPage extends StatelessWidget {
  static const routeName = '/main-menu-page';
  final MainMenuArgument menuArgument;
  const MainMenuPage({super.key, required this.menuArgument});

  @override
  Widget build(BuildContext context) {
    MainMenuController controller =
        Get.put(MainMenuController(menuArgument: menuArgument));

    return Obx(
      () => BaseScaffold(
        title: controller.title.value.toUpperCase(),
        body: Container(
          width: Get.width,
          height: Get.height,
          padding:
              EdgeInsets.fromLTRB(Sizes.s20, Sizes.s10, Sizes.s20, Sizes.s0),
          child: Column(
            children: [
              CustomTabBar(
                controller: controller.tabController,
                data: controller
                    .getMenuList()
                    .map((e) => e.formattedName)
                    .toList(),
                onTap: (index) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  controller.selectedIndex.value = index;
                  controller.title.value = Constant.tabMenu[index];
                  controller.update();
                },
                selectedIndex: controller.selectedIndex.value,
              ),
              SizedBox(height: Sizes.s10),
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children: _buildTabBarView(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildTabBarView() {
    return [
      if (hasPermission(Permission.komparasiGet)) KomparasiPage(),
      if (hasPermission(Permission.fokus)) MobilityStatsScreen(),
      if (hasChildPermission('Jalan_')) JalanPage(),
      if (hasChildPermission('Penyebrangan_')) PenyeberanganPage(),
      if (hasChildPermission('Laut_')) LautPage(menuArgument: menuArgument),
      if (hasChildPermission('Udara_')) UdaraPage(),
      if (hasChildPermission('Perkeretaapian_')) PerkeretaapianPage(),
      if (hasChildPermission('Tol_')) TolPage(),
      if (hasChildPermission('Arteri_')) ArteriPage(menuArgument: menuArgument),
      if (hasPermission(Permission.cctv)) CctvPage(),
      if (hasPermission(Permission.liputan)) LiputanPage(),
      if (hasPermission(Permission.thirtySeconds)) ThirtySecondPage(),
    ];
  }
}
