import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/Posko/register_posko_screen.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/modules/posko/views/posko_detail_screen.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/modules/posko/controllers/posko_controller.dart';
import 'package:strategi_hub_app/utils/permission.dart';

class PoskoScreen extends GetView<PoskoController> {
  BuildContext get context => Get.context!;

  static const routeName = '/posko';

  const PoskoScreen({super.key});

  void _showFilterDialog() {
    final screenHeight = MediaQuery.of(Get.context!).size.height;
    final screenWidth = MediaQuery.of(Get.context!).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Filter dan Sortir'),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Filter berdasarkan:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Obx(() => Column(
                          children: [
                            _buildFilterOption(0, 'All', setState),
                            ...controller.poskoTypeOptions
                                .map((type) => _buildFilterOption(
                                      type.id ?? 0,
                                      type.nama ?? '',
                                      setState,
                                    )),
                          ],
                        ))
                  ],
                ),
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                controller.onApplyFilter();
              },
              child: Text('Terapkan', 
              style: TextStyle(fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14),
                color: Colors.white,
              ),),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFilterOption(
      int value, String label, StateSetter setDialogState) {
    return RadioListTile<int>(
      title: Text(label),
      value: value,
      groupValue: controller.selectedFilterPoskoType.value,
      onChanged: (int? newValue) {
        setDialogState(() {
          if (newValue != null) {
            controller.selectedFilterPoskoType.value = newValue;
          }
        });
      },
      dense: true,
      contentPadding: EdgeInsets.zero,
    );
  }

  Widget _buildPageNumber(PoskoController controller, int page, bool isActive) {
    return GestureDetector(
      onTap: () => controller.onChangePage(page),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: isActive ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            '$page',
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildPagination(PoskoController controller) {
    List<Widget> pages = [];
    for (int i = 1; i <= controller.totalPages.value; i++) {
      pages.add(
          _buildPageNumber(controller, i, i == controller.currentPage.value));
    }
    return pages;
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'POSKO',
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      onChanged: (value) => controller.onChangeSearch(value),
                      decoration: InputDecoration(
                        hintText: 'Cari',
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 3),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.filter_list, color: Colors.grey),
                    onPressed: _showFilterDialog,
                  ),
                ),
                SizedBox(width: 3),
                if (hasPermission(Permission.pengaturanPoskoCreate))
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.add, color: Colors.white),
                      onPressed: () async {
                        await Get.toNamed(RegisterPoskoScreen.routeName)
                            ?.then((value) {
                          if (value != null) {
                            controller.getPaginatedPosko();
                          }
                        });
                      },
                    ),
                  ),
              ],
            ),
          ),
          // List of posko items
          Expanded(
            child: Obx(
              () {
                if (controller.isLoading.value) {
                  return const Center(child: BouncingLoader());
                }
                if (controller.poskoList.value.isEmpty) {
                  return const Center(child: Text('No Data'));
                }
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  child: ListView.builder(
                    itemCount: controller.poskoList.value.length,
                    itemBuilder: (context, index) {
                      final posko = controller.poskoList.value[index];
                      return Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey[200]!,
                              width: 0.5,
                            ),
                          ),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          dense: true,
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${(controller.currentPage.value - 1) * 10 + (index + 1)}.',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.0,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  posko.namaPosko,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    height: 1.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          subtitle: Transform.translate(
                            offset: const Offset(16, 2),
                            child: Text(
                              '${posko.event?.nama} | ${posko.jenisPosko?.nama}',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                height: 1.0,
                              ),
                            ),
                          ),
                          trailing: Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Center(
                              child: IconButton(
                                icon: Icon(
                                  IconlyLight.arrow_right_2,
                                  size: Sizes.s18,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  if (hasPermission(
                                      Permission.pengaturanPoskoDetail)) {
                                    Get.toNamed(
                                      PoskoDetailScreen.routeName,
                                      arguments: posko.id,
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          // Pagination controls
          Obx(
            () {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left,
                          color: Colors.grey, size: 18),
                      onPressed: () {
                        controller
                            .onChangePage(controller.currentPage.value - 1);
                      },
                    ),
                    ..._buildPagination(controller),
                    IconButton(
                      icon: const Icon(Icons.chevron_right,
                          color: Colors.grey, size: 18),
                      onPressed: () {
                        controller
                            .onChangePage(controller.currentPage.value + 1);
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
