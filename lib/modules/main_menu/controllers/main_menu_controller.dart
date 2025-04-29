import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/constant.dart';
import 'package:strategi_hub_app/constant/enum/menu_enum.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/modules/main_menu/models/main_menu_argument.dart';
import 'package:strategi_hub_app/utils/permission.dart';

class MainMenuController extends GetxController
    with GetTickerProviderStateMixin {
  final MainMenuArgument menuArgument;
  late TabController tabController;
  RxInt selectedIndex = 0.obs;
  RxString title = 'Menu'.obs;

  MainMenuController({required this.menuArgument});

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(
      length: getMenuList().length,
      vsync: this,
    );
    initIndex();
    listenTabSwitch();
  }

  List<MenuEnum> getMenuList() {
    return [
      if (hasPermission(Permission.komparasiGet)) MenuEnum.komparasi,
      if (hasPermission(Permission.fokus)) MenuEnum.fokus,
      if (hasChildPermission('Jalan_')) MenuEnum.jalan,
      if (hasChildPermission('Penyebrangan_')) MenuEnum.penyeberangan,
      if (hasChildPermission('Laut_')) MenuEnum.laut,
      if (hasChildPermission('Udara_')) MenuEnum.udara,
      if (hasChildPermission('Perkeretaapian_')) MenuEnum.perkeretaapian,
      if (hasChildPermission('Tol_')) MenuEnum.tol,
      if (hasChildPermission('Arteri_')) MenuEnum.arteri,
      if (hasPermission(Permission.cctv)) MenuEnum.cctv,
      if (hasPermission(Permission.liputan)) MenuEnum.liputan,
      if (hasPermission(Permission.thirtySeconds)) MenuEnum.thirtySecond,
    ];
  }

  int getSelectedIndex(MenuEnum menuEnum) {
    final list = getMenuList();
    final index = list.indexOf(menuEnum);
    return index != -1 ? index : 0;
  }

  void initIndex() {
    selectedIndex.value = getSelectedIndex(menuArgument.menuEnum);
    title.value = Constant.tabMenu[selectedIndex.value];
    tabController.index = selectedIndex.value;
    
    // Ensure the menu argument is available to be used by the tab pages
    Get.lazyPut(() => menuArgument, tag: 'main_menu_argument');
    
    selectedIndex.refresh();
  }

  void listenTabSwitch() {
    tabController.animation!.addListener(() {
      FocusManager.instance.primaryFocus?.unfocus();
      // this will catch a tab change by tapping on the tab bar
      if (tabController.indexIsChanging) {
        if (selectedIndex.value != tabController.index) {
          selectedIndex.value = tabController.index;
        }
      } else {
        final int temp = tabController.animation!.value.round();
        if (selectedIndex.value != temp) {
          selectedIndex.value = temp;
          tabController.index = selectedIndex.value;
        }
      }

      title.value = Constant.tabMenu[selectedIndex.value];
      selectedIndex.refresh();
    });
  }
}