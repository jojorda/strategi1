import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/jalan/controllers/jalan_controller.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showConnectionAlert;
  final Function()? onPressMenu;
  final Duration animationDuration;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showConnectionAlert = false,
    this.onPressMenu,
    this.animationDuration = const Duration(milliseconds: 500),
  });

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (showConnectionAlert ? 40 : 0));

  List<Widget> _buildActionIcons(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return [
      Padding(
        padding: EdgeInsets.only(left: Sizes.s10, right: Sizes.s20),
        child: GestureDetector(
          onTap: onPressMenu,
          child: SvgPicture.asset(
            AssetConstant.menuIcon,
            width: isUnfolded? Sizes.s16 : isSmallScreen ? Sizes.s16 : Sizes.s24,
            height: isUnfolded? Sizes.s16 : isSmallScreen ? Sizes.s16 : Sizes.s24,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return AnimatedContainer(
      duration: animationDuration,
      height: kToolbarHeight +
          (showConnectionAlert ? 30 : 0) +
          MediaQuery.of(context).padding.top,
      child: Stack(
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: Get.theme.colorScheme.onSurface,
            automaticallyImplyLeading: false,
            leading : IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: (){
                final controller = Get.find<JalanController>();
                controller.selectedIndex.value = 0;
                Get.back();
              },
            ),
            toolbarHeight: kToolbarHeight,
            centerTitle: true,
            actions: _buildActionIcons(context),
            elevation: 0,
            titleSpacing: 0,
            title: Text(
              title,
              style: Get.textTheme.headlineSmall!.copyWith(
                  color: AppColors.whiteColor, fontSize: isUnfolded? FontSizes.s14 : isSmallScreen ? FontSizes.s12 : FontSizes.s16),
            ),
            flexibleSpace: Container(
              height: kToolbarHeight + MediaQuery.of(context).padding.top,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    AppColors.darkColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: !showConnectionAlert
                ? const SizedBox.shrink()
                : Container(
                    key: ValueKey<bool>(showConnectionAlert),
                    height: 30,
                    color: Colors.red,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.signal_wifi_off,
                          color: Colors.white,
                          size: 18,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'No Internet Connection',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: isUnfolded ? 11 : 13,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Tooltip(
                          message: 'Peringatan Mode Offline\n'
                              '• Menampilkan data terakhir yang diambil\n'
                              '• Data mungkin tidak mencerminkan filter saat ini\n'
                              '• Koneksi internet diperlukan untuk informasi terbaru',
                          textAlign: TextAlign.start,
                          triggerMode: TooltipTriggerMode.tap,
                          child: Icon(
                            Icons.info_outline,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
