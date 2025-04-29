import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:strategi_hub_app/components/appbars/custom_appbar.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/core/base/network_status_notifier.dart';
import 'package:strategi_hub_app/modules/index/controllers/index_controller.dart';
import 'package:strategi_hub_app/modules/index/views/index_page.dart';

class BaseScaffold extends StatelessWidget {
   BaseScaffold(
      {super.key, required this.title, this.body, this.bottomNavigationBar});

  final String title;
  final Widget? body;
  final Widget? bottomNavigationBar;

  // Move GlobalKey to class level
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    
    final indexController = Get.find<IndexController>();

    void navigateToIndexPage() {
      if (Get.currentRoute != IndexPage.routeName) {
        Get.until((route) =>
            route is GetPageRoute &&
            route.settings.name == IndexPage.routeName);
      }
    }

    return Scaffold(
      key: scaffoldKey, // Keep the key here
      appBar: CustomAppBar(
        title: title,
        showConnectionAlert:
            !Provider.of<NetworkStatusNotifier>(context).isConnected,
        onPressMenu: () => scaffoldKey.currentState?.openEndDrawer(),
      ),
      endDrawer: Drawer(
        backgroundColor: Get.theme.colorScheme.background,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(Sizes.s36),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    AppColors.darkColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ),
              child: Image.asset(
                AssetConstant.logoVer,
                width: isUnfolded ? 300 : 400,
                height: isUnfolded ? 300 : 400,
              ),
            ),
            SizedBox(height: Sizes.s16),
            MenuButton(
              iconPath: AssetConstant.dashboardIcon,
              title: "Dashboard",
              onTap: () {
                indexController.currentIndex.value = 1;
                indexController.onChangeIndex();
                navigateToIndexPage();
              },
            ),
            MenuButton(
              iconPath: AssetConstant.reportIcon,
              title: "Laporan",
              onTap: () {
                indexController.currentIndex.value = 2;
                indexController.onChangeIndex();
                navigateToIndexPage();
              },
            ),
            MenuButton(
              iconPath: AssetConstant.settingIcon,
              title: "Setting",
              onTap: () {
                indexController.currentIndex.value = 3;
                indexController.onChangeIndex();
                navigateToIndexPage();
              },
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
