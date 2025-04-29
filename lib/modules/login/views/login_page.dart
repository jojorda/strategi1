import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/custom_input_form.dart';
import 'package:strategi_hub_app/components/custom_password_form.dart';
import 'package:strategi_hub_app/components/custom_primary_button.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/welcome/controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  static const routeName = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode

    return Scaffold(
      body: SizedBox(
        height: Get.height,
        child: Stack(
          children: [
            Positioned(
              bottom: isSmallScreen ? -100 : -50,
              right: 0,
              left: 0,
              child: SvgPicture.asset(
                AssetConstant.bgLogin,
                width: Get.width,
                height: isSmallScreen ? Get.height * 0.5 : Get.height * 0.4,
                fit: BoxFit.fill,
              ),
            ),
            SingleChildScrollView(
              // padding: EdgeInsets.symmetric(
              //     vertical: Sizes.s48, horizontal: Sizes.s36),
              padding: EdgeInsets.only(
                top: isSmallScreen ? Sizes.s24 : Sizes.s48,
                left: isUnfolded ? screenWidth * 0.1 : Sizes.s24,
                right: isUnfolded ? screenWidth * 0.1 : Sizes.s24,
                bottom: isSmallScreen ? 100 : Sizes.s24, // Add bottom padding in folded mode
              ),
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: isUnfolded ? screenWidth * 0.3 : (isSmallScreen ? screenWidth * 0.4 : screenWidth * 0.5),
                      child: Image.asset(
                        AssetConstant.logo,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: isUnfolded ? Sizes.s22 : Sizes.s48),
                      Text(
                        "Login",
                        style: Get.textTheme.headlineMedium!.copyWith(
                          fontSize: isUnfolded ? 32 : (isSmallScreen ? 20 : 28),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: isUnfolded ? Sizes.s10 : Sizes.s24),
                      CustomInputForm(
                        isRequired: true,
                        controller: controller.userNameText,
                        hintText: "Masukkan username",
                        label: "Username",
                        labelFontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 13),
                        hintFontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12),
                        maxLines: 1,
                        validator: (value) {},
                      ),
                      SizedBox(height: isSmallScreen ? Sizes.s12 : Sizes.s16),
                      CustomPasswordForm(
                        controller: controller.passwordText,
                        isRequired: true,
                        label: "Password",
                        hintText: "Masukkan password",
                        labelFontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 13),
                        hintFontSize: isUnfolded ? 14 : (isSmallScreen ? 14 : 12),
                      ),
                      SizedBox(height: Sizes.s6),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Lupa Password?",
                          style: Get.textTheme.bodyMedium!.copyWith(
                            color: Get.theme.colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: isSmallScreen ? 12 : 14,
                          ),
                        ),
                      ),
                      SizedBox(height: isSmallScreen ? Sizes.s24 : Sizes.s32),
                      CustomPrimaryButton(
                        text: "Login",
                        onPress: () => controller.login(),
                        // height: isUnfolded ? 56 : (isSmallScreen ? 48 : 52),
                      ),
                    ],
                  
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
