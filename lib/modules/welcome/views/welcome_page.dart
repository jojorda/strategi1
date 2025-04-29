import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/custom_outline_button.dart';
import 'package:strategi_hub_app/components/custom_primary_button.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/login/views/login_page.dart';
import 'package:strategi_hub_app/modules/welcome/controllers/login_controller.dart';
import 'package:strategi_hub_app/modules/welcome/views/sso_page.dart';

class WelcomePage extends GetView<LoginController> {
  static const routeName = '/welcome';
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: isUnfolded ? -50 : (isSmallScreen ? -100 : -50),
            right: 0,
            left: 0,
            child: SvgPicture.asset(
              AssetConstant.bgLogin,
              width: Get.width,
              height: isUnfolded ? Get.height * 0.4 : (isSmallScreen ? Get.height * 0.5 : Get.height * 0.4),
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            // padding: EdgeInsets.symmetric(
            //   vertical: Sizes.s48,
            //   horizontal: Sizes.s36,
            // ),
            padding: EdgeInsets.only(
                top: isSmallScreen ? Sizes.s4 : Sizes.s48,
                left: isUnfolded ? screenWidth * 0.1 : Sizes.s24,
                right: isUnfolded ? screenWidth * 0.1 : Sizes.s24,
                bottom: isSmallScreen ? 10 : Sizes.s24, // Add bottom padding in folded mode
              ),
            child: Column(
              children: [
                SizedBox(height: isUnfolded? Sizes.s10 : Sizes.s100),
                Image.asset(
                  AssetConstant.logoVer2,
                  width: isUnfolded  ? Get.width / 2 : Get.width / 1.3,
                ),
                SizedBox(height: isUnfolded? Sizes.s50 : Sizes.s100),
                CustomPrimaryButton(
                  text: "Login",
                  onPress: () => Get.toNamed(LoginPage.routeName),
                  bgColor: Get.theme.colorScheme.secondary,
                ),
                SizedBox(height: Sizes.s16),
                CustomOutlineButton(
                  onPress: () async {
                    await Get.toNamed(
                            "${WelcomePage.routeName}${SSOLoginPage.routeName}")
                        ?.then((value) {
                      if (value != null) {
                        controller.loginSSO(value['jwt']);
                      } else {
                        Get.snackbar("Error", "Login SSO gagal");
                      }
                    });
                  },
                  text: "Login SSO",
                  textColor: Get.theme.colorScheme.secondary,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
