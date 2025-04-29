import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/modules/fokus/controllers/fokus_controller.dart';
import 'package:strategi_hub_app/modules/laporan/views/approval_laporan_page.dart';
import 'package:strategi_hub_app/components/Posko/posko_screen.dart';
import 'package:strategi_hub_app/modules/settings/controller/setting_controller.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/components/Fokus/input_fokus_screen.dart';
import 'package:strategi_hub_app/utils/permission.dart';
import 'package:strategi_hub_app/components/Tentang/tentang_screen.dart';
import 'package:strategi_hub_app/components/Privasi/Privasi_screen.dart';
import 'package:strategi_hub_app/components/Kententuan/kententuan_screen.dart';
import 'package:strategi_hub_app/components/Bahasa/bahasa_page.dart';
import 'package:strategi_hub_app/components/informasi%20Pengguna/informasi_pengguna.dart';

class SettingsScreen extends GetView<SettingController> {
  static const routeName = '/settings';
  const SettingsScreen({super.key});

  Widget _buildSettingItem({
    required Widget icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 26,
          vertical: 12,
        ),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.chevron_right,
              size: 24,
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Obx(() {
      return Container(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue[100],
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                      controller.user.value?.photoUrl ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              controller.user.value?.alias ?? '',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              controller.user.value?.kantor ?? '-',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildAppVersion() {
    return Column(
      children: [
        Text(
          'Strategi Hub Mobile App',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Obx(() {
          return Text(
            'Versi ${controller.appVersion}',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 10,
            ),
          );
        }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileSection(),
            _buildSettingItem(
              icon: SvgPicture.asset(
                AssetConstant.info,
                color: AppColors.blackColor,
                height: Sizes.s20,
                width: Sizes.s20,
              ),
              title: 'Informasi Pengguna',
              onTap: () {
                Get.to(InformasiPenggunaPage());
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0),
              child: Divider(color: Colors.grey),
            ),
            _buildSettingItem(
              icon: SvgPicture.asset(
                AssetConstant.approval,
                color: AppColors.blackColor,
                height: Sizes.s20,
                width: Sizes.s20,
              ),
              title: 'Approval Laporan',
              onTap: () {
                Get.toNamed(ApprovalLaporanPage.routeName);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0),
              child: Divider(color: Colors.grey),
            ),
            if (hasPermission(Permission.inputFokus)) ...[
              _buildSettingItem(
                icon: SvgPicture.asset(
                  AssetConstant.fokuss,
                  color: AppColors.blackColor,
                  height: Sizes.s20,
                  width: Sizes.s20,
                ),
                title: 'Input Fokus',
                onTap: () {
                  Get.toNamed(InputFokusScreen.routeName)?.then((value) {
                    if (value != null && value['created']) {
                      Get.find<FokusController>().getFokusData(isRefresh: true);
                    }
                  });
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Divider(color: Colors.grey),
              ),
            ],
            if (hasPermission(Permission.pengaturanPoskoList)) ...[
              _buildSettingItem(
                icon: SvgPicture.asset(
                  AssetConstant.poskoss,
                  color: AppColors.blackColor,
                  height: Sizes.s20,
                  width: Sizes.s20,
                ),
                title: 'Posko',
                onTap: () {
                  Get.toNamed(PoskoScreen.routeName);
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Divider(color: Colors.grey),
              ),
            ],
            _buildSettingItem(
              icon: SvgPicture.asset(
                AssetConstant.bahasas,
                color: AppColors.blackColor,
                height: Sizes.s20,
                width: Sizes.s20,
              ),
              title: 'Bahasa',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BahasaPage(),
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0),
              child: Divider(color: Colors.grey),
            ),
            _buildSettingItem(
              icon: SvgPicture.asset(
                AssetConstant.privasis,
                color: AppColors.blackColor,
                height: Sizes.s20,
                width: Sizes.s20,
              ),
              title: 'Privasi',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivasiPage(),
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0),
              child: Divider(color: Colors.grey),
            ),
            _buildSettingItem(
              icon: SvgPicture.asset(
                AssetConstant.ketentuans,
                color: AppColors.blackColor,
                height: Sizes.s20,
                width: Sizes.s20,
              ),
              title: 'Ketentuan',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KetentuanPage(),
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0),
              child: Divider(color: Colors.grey),
            ),
            _buildSettingItem(
              icon: SvgPicture.asset(
                AssetConstant.tentang,
                color: AppColors.blackColor,
                height: Sizes.s20,
                width: Sizes.s20,
              ),
              title: 'Tentang',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TentangPage(),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton.icon(
                onPressed: () => controller.logout(),
                icon: Icon(
                  Icons.logout,
                  color: Colors.red[600],
                  size: 20,
                ),
                label: Text(
                  'Log Out',
                  style: TextStyle(
                    color: Colors.red[600],
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            _buildAppVersion(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
