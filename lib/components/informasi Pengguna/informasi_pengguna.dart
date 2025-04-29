import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/modules/settings/controller/setting_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/components/UbahPassword/ubah_password.dart';

class InformasiPenggunaPage extends GetView<SettingController> {
  const InformasiPenggunaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
        final screenWidth = MediaQuery.of(context).size.width;
        final isSmallScreen = screenHeight < 700 || screenWidth < 380;
        final isUnfolded = screenWidth > 600;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A237E),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'PENGATURAN',
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Profile Section
          Container(
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
                  controller.user.value?.alias ?? '-',
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
          ),

          ListTile(
            leading: SvgPicture.asset(
              AssetConstant.info,
              // color: AppColors.blackColor,
              height: isUnfolded ? Sizes.s18 : (isSmallScreen ? Sizes.s18 : Sizes.s20),
              width: isUnfolded ? Sizes.s18 : (isSmallScreen ? Sizes.s18 : Sizes.s20),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama Lengkap',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  controller.user.value?.fullname ?? '',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          Divider(color: Colors.grey.shade300),

          // Email Field
          ListTile(
            leading: SvgPicture.asset(
              AssetConstant.emails,
              // color: AppColors.blackColor,
              height: isUnfolded ? Sizes.s18 : (isSmallScreen ? Sizes.s18 : Sizes.s20),
              width: isUnfolded ? Sizes.s18 : (isSmallScreen ? Sizes.s18 : Sizes.s20),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  controller.user.value?.email ?? '-',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          Divider(color: Colors.grey.shade300),
          ListTile(
            leading: SvgPicture.asset(
              AssetConstant.roles,
              // color: AppColors.blackColor,
              height: isUnfolded ? Sizes.s18 : (isSmallScreen ? Sizes.s18 : Sizes.s20),
              width: isUnfolded ? Sizes.s18 : (isSmallScreen ? Sizes.s18 : Sizes.s20),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Role User',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  controller.user.value?.role ?? '-',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          Divider(color: Colors.grey.shade300),
          ListTile(
            leading: SvgPicture.asset(
              AssetConstant.kantors,
              // color: AppColors.blackColor,
              height: isUnfolded ? Sizes.s18 : (isSmallScreen ? Sizes.s18 : Sizes.s20),
              width: isUnfolded ? Sizes.s18 : (isSmallScreen ? Sizes.s18 : Sizes.s20),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kantor Unit Kerja',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  controller.user.value?.kantor ?? '-',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          Divider(color: Colors.grey.shade300),
          // Change Password
          ListTile(
            leading: const Icon(Icons.lock_outline, color: Color(0xFF0A2574)),
            title: const Text(
              'Ubah Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14
              ),
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black, // Warna ikon panah menjadi hitam
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PasswordChangeScreen(),
                ),
              );
            },
          ),

          const Spacer(),

          const SizedBox(height: 13),
        ],
      ),
    );
  }
}
