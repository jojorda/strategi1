import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/domain/repositories/auth_repository.dart';
import 'package:strategi_hub_app/modules/index/views/index_page.dart';

class LoginController extends GetxController {
  final AuthRepository _authRepository;

  LoginController(this._authRepository);

  final TextEditingController userNameText = TextEditingController();
  final TextEditingController passwordText = TextEditingController();

  Future<void> login() async {
    showLoader();
    try {
      await _authRepository.login(userNameText.text, passwordText.text);
      hideLoader();
      Get.offAllNamed(IndexPage.routeName);
    } catch (e) {
      hideLoader();
      debugPrint('Login error: $e');
      Get.snackbar(
          'Error', 'An error occurred during login. Please try again.');
    }
  }

  Future<void> loginSSO(String ssoAccessToken) async {
    showLoader();
    try {
      await _authRepository.loginSSO(ssoAccessToken);
      Get.offAllNamed(IndexPage.routeName);
      hideLoader();
    } catch (e) {
      hideLoader();
      debugPrint('SSO Login error: $e');
      Get.snackbar(
          'Error', 'An error occurred during SSO login. Please try again.');
    }
  }
}
