import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/home/views/home_page.dart';
import 'package:strategi_hub_app/modules/index/controllers/index_controller.dart';
import 'package:strategi_hub_app/modules/laporan/views/laporan_page.dart';
import 'package:strategi_hub_app/modules/settings/view/settings_screen.dart';
import 'package:strategi_hub_app/constant/enum/jalan_enum.dart';
import 'package:strategi_hub_app/constant/enum/menu_enum.dart';
import 'package:strategi_hub_app/modules/main_menu/views/main_menu_page.dart';
import 'package:strategi_hub_app/modules/main_menu/models/main_menu_argument.dart';
import 'package:strategi_hub_app/modules/jalan/views/jalan_page.dart';
import 'package:strategi_hub_app/modules/main_menu/views/main_menu_page2.dart';

class IndexPage extends GetView<IndexController> {
  static const routeName = "/index";
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BaseScaffold(
        title: controller.title.value,
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: [
            HomePage(),
            Container(
              width: Get.width,
              height: Get.height,
              // padding: EdgeInsets.fromLTRB(
              //     Sizes.s20, Sizes.s10, Sizes.s20, Sizes.s0),
              child: MainMenuPage2(
                menuArgument: MainMenuArgument(menuEnum: MenuEnum.jalan),
              ),
            ),
            LaporanPage(),
            SettingsScreen(),
          ],
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Get.theme.colorScheme.background,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: AppColors.outlineColor,
                    blurRadius: 14,
                    spreadRadius: 0.5,
                    offset: Offset(0, 2)),
              ],
            ),
            child: SafeArea(
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Get.theme.colorScheme.background,
                currentIndex: controller.currentIndex.value,
                selectedItemColor: AppColors.gradientStartColor,
                unselectedItemColor: Get.theme.colorScheme.inverseSurface,
                selectedFontSize: Sizes.s12,
                unselectedFontSize: Sizes.s12,
                elevation: 0,
                onTap: (index) {
                  controller.currentIndex.value = index;
                  controller.onChangeIndex();
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: Sizes.s4),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(AssetConstant.homeIcon),
                          Text(
                            'Beranda',
                            style: TextStyle(fontSize: 10), // Smaller size
                          ),
                        ],
                      ),
                    ),
                    activeIcon: Padding(
                      padding: EdgeInsets.only(bottom: Sizes.s4),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(AssetConstant.homeActiveIcon),
                          Text(
                            'Beranda',
                            style: TextStyle(
                              fontSize: 10, // Smaller size
                              color:
                                  AppColors.gradientStartColor, // Active color
                            ),
                          ),
                        ],
                      ),
                    ),
                    label: '', // Empty label since we're using custom widget
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: Sizes.s4),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(AssetConstant.dashboardIcon),
                          Text(
                            'Dashboard',
                            style: TextStyle(fontSize: 10), // Smaller size
                          ),
                        ],
                      ),
                    ),
                    activeIcon: Padding(
                      padding: EdgeInsets.only(bottom: Sizes.s4),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(AssetConstant.dashboardActiveIcon),
                          Text(
                            'Dashboard',
                            style: TextStyle(
                              fontSize: 10, // Smaller size
                              color:
                                  AppColors.gradientStartColor, // Active color
                            ),
                          ),
                        ],
                      ),
                    ),
                    label: '', // Empty label since we're using custom widget
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: Sizes.s4),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(AssetConstant.reportIcon),
                          Text(
                            'Laporan',
                            style: TextStyle(fontSize: 10), // Smaller size
                          ),
                        ],
                      ),
                    ),
                    activeIcon: Padding(
                      padding: EdgeInsets.only(bottom: Sizes.s4),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(AssetConstant.reportActiveIcon),
                          Text(
                            'Laporan',
                            style: TextStyle(
                              fontSize: 10, // Smaller size
                              color:
                                  AppColors.gradientStartColor, // Active color
                            ),
                          ),
                        ],
                      ),
                    ),
                    label: '', // Empty label since we're using custom widget
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: Sizes.s4),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(AssetConstant.settingIcon),
                          Text(
                            'Setting',
                            style: TextStyle(fontSize: 10), // Smaller size
                          ),
                        ],
                      ),
                    ),
                    activeIcon: Padding(
                      padding: EdgeInsets.only(bottom: Sizes.s4),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(AssetConstant.settingActiveIcon),
                          Text(
                            'Setting',
                            style: TextStyle(
                              fontSize: 10, // Smaller size
                              color:
                                  AppColors.gradientStartColor, // Active color
                            ),
                          ),
                        ],
                      ),
                    ),
                    label: '', // Empty label since we're using custom widget
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onTap,
  });

  final String title;
  final String iconPath;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        padding:
            EdgeInsets.symmetric(horizontal: Sizes.s36, vertical: Sizes.s12),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              color: Get.theme.colorScheme.surface,
            ),
            SizedBox(width: Sizes.s16),
            Text(
              title,
              style: Get.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
