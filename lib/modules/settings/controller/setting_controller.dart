import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/domain/entities/user.dart';
import 'package:strategi_hub_app/domain/repositories/auth_repository.dart';
import 'package:strategi_hub_app/modules/index/views/index_page.dart';

class SettingController extends GetxController {
  final AuthRepository _authRepository;
  RxString appVersion = ''.obs;

  SettingController(this._authRepository);

  Rx<User?> user = Rx<User?>(null);

  @override
  Future<void> onInit() async {
    getProfile();
    getAppVersion();

    super.onInit();
  }

  void getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    appVersion.value = packageInfo.version;
  }

  void getProfile() async {
    final result = await _authRepository.getProfile();
    user.value = result;
  }

  Future<void> logout() async {
    showLoader();
    try {
      await _authRepository.logout();
      hideLoader();
      Get.offAllNamed(IndexPage.routeName);
    } catch (e) {
      hideLoader();
      debugPrint('Logout error: $e');
      Get.snackbar(
          'Error', 'An error occurred during logout. Please try again.');
    }
  }
}
