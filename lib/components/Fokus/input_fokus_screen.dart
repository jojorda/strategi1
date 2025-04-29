import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/domain/entities/cctv_data.dart';
import 'package:strategi_hub_app/domain/entities/pantau.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:strategi_hub_app/modules/fokus/controllers/fokus_input_controller.dart';

class InputFokusScreen extends GetView<FokusInputController> {
  static const routeName = '/input-fokus';
  const InputFokusScreen({super.key});
  BuildContext get context => Get.context!;

  void _showAddTransportationNodeDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.black),
                      onPressed: () {
                        controller.clearInputDialogState();
                        Navigator.pop(context);
                      },
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
                const Text(
                  "Pilih Matra",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                DropdownButtonFormField2<String>(
                  value: controller.selectedSimpulMatra.value,
                  items: controller.matraOptions.map((entry) {
                    return DropdownMenuItem<String>(
                      value: entry,
                      child: Text(
                        entry.capitalizeFirst ?? '',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    controller.selectedSimpulMatra.value = value;
                  },
                  dropdownStyleData: DropdownStyleData(
                    maxHeight: 200,
                    width: MediaQuery.of(context).size.width * 0.85,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  buttonStyleData: const ButtonStyleData(
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                  ),
                  dropdownSearchData: DropdownSearchData(
                    searchController: TextEditingController(),
                    searchInnerWidgetHeight: 50,
                    searchInnerWidget: Container(
                      height: 50,
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 4,
                        right: 8,
                        left: 8,
                      ),
                      child: TextFormField(
                        expands: true,
                        maxLines: null,
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8,
                          ),
                          hintText: 'Cari...',
                          hintStyle: const TextStyle(fontSize: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    searchMatchFn: (item, searchValue) {
                      return (item.value
                          .toString()
                          .toLowerCase()
                          .contains(searchValue.toLowerCase()));
                    },
                  ),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Pilih opsi",
                    hintStyle: const TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Pilih Simpul",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Obx(
                  () => DropdownButtonFormField2<Location>(
                    value: controller.selectedSimpul.value,
                    items: controller.listFilteredSimpul.value?.map((entry) {
                      return DropdownMenuItem<Location>(
                        value: entry,
                        child: Text(
                          entry.nama ?? '',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      controller.selectedSimpul.value = value;
                    },
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    buttonStyleData: ButtonStyleData(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                    ),
                    dropdownSearchData: DropdownSearchData(
                      searchController: TextEditingController(),
                      searchInnerWidgetHeight: 50,
                      searchInnerWidget: Container(
                        height: 50,
                        padding: const EdgeInsets.only(
                          top: 8,
                          bottom: 4,
                          right: 8,
                          left: 8,
                        ),
                        child: TextFormField(
                          expands: true,
                          maxLines: null,
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            hintText: 'Cari simpul...',
                            hintStyle: const TextStyle(fontSize: 12),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      searchMatchFn: (item, searchValue) {
                        return ((item.value?.nama ?? '')
                            .toLowerCase()
                            .contains(searchValue.toLowerCase()));
                      },
                    ),
                    decoration: InputDecoration(
                      hintText: "Pilih Simpul Transportasi",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.saveInputSimpul();
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Simpan'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showAddCCTVDialog() {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;
        double dialogWidth = screenWidth > 600
            ? 500
            : screenWidth * 0.9; // Adjust width based on screen size
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.white,
          child: Container(
            width: dialogWidth,
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              // Prevent overflow
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header with close button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Tambah CCTV",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.black),
                        onPressed: () {
                          controller.clearInputDialogState();
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // Dropdown: Pilih Matra
                  const Text("Matra",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 6),
                  Obx(() {
                    return DropdownButtonFormField2<String>(
                      value: controller.selectedCctvMatra.value,
                      items: controller.listCctvMatra.value.map((e) {
                        return DropdownMenuItem<String>(
                          value: e,
                          child: Text(
                            e,
                            style: const TextStyle(fontSize: 14),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        controller.selectedCctvMatra.value = value;
                      },
                      dropdownStyleData: DropdownStyleData(
                        maxHeight: 200,
                        width: MediaQuery.of(context).size.width * 0.85,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      buttonStyleData: const ButtonStyleData(
                        height: 45,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                      ),
                      dropdownSearchData: DropdownSearchData(
                        searchController: TextEditingController(),
                        searchInnerWidgetHeight: 50,
                        searchInnerWidget: Container(
                          height: 50,
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 4,
                            right: 8,
                            left: 8,
                          ),
                          child: TextFormField(
                            expands: true,
                            maxLines: null,
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 8,
                              ),
                              hintText: 'Cari...',
                              hintStyle: const TextStyle(fontSize: 14),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        searchMatchFn: (item, searchValue) {
                          return (item.value
                              .toString()
                              .toLowerCase()
                              .contains(searchValue.toLowerCase()));
                        },
                      ),
                      decoration: InputDecoration(
                        hintText: "Pilih opsi",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 10),
                      ),
                    );
                  }),
                  const SizedBox(height: 15),

                  // Dropdown: Pilih Simpul
                  const Text("Simpul",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 6),
                  Obx(() {
                    return DropdownButtonFormField2<String>(
                      value: controller.selectedCctvLocation.value,
                      items: controller.listCctvLocation.value.map((entry) {
                        return DropdownMenuItem<String>(
                          value: entry,
                          child: Text(
                            entry,
                            style: const TextStyle(fontSize: 14),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        controller.selectedCctvLocation.value = value;
                      },
                      dropdownStyleData: DropdownStyleData(
                        maxHeight: 200,
                        width: MediaQuery.of(context).size.width * 0.85,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      buttonStyleData: ButtonStyleData(
                        height: 45,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                      ),
                      dropdownSearchData: DropdownSearchData(
                        searchController: TextEditingController(),
                        searchInnerWidgetHeight: 50,
                        searchInnerWidget: Container(
                          height: 50,
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 4,
                            right: 8,
                            left: 8,
                          ),
                          child: TextFormField(
                            expands: true,
                            maxLines: null,
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 8,
                              ),
                              hintText: 'Cari simpul...',
                              hintStyle: const TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        searchMatchFn: (item, searchValue) {
                          return (item.value
                              .toString()
                              .toLowerCase()
                              .contains(searchValue.toLowerCase()));
                        },
                      ),
                      decoration: InputDecoration(
                        hintText: "Pilih opsi",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 10),
                      ),
                    );
                  }),

                  const SizedBox(height: 10),

                  // Dropdown: Pilih CCTV
                  const Text("CCTV",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 6),
                  Obx(() {
                    return DropdownButtonFormField2<CctvData>(
                      isExpanded: true,
                      value: controller.selectedCctvData.value,
                      items: controller.listFilteredCctv.value?.map((entry) {
                        return DropdownMenuItem<CctvData>(
                          value: entry,
                          child: Text(
                            '${entry.locationName ?? ''} - ${entry.cctvName ?? ''}',
                            style: const TextStyle(fontSize: 14),
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        controller.selectedCctvData.value = value;
                      },
                      dropdownStyleData: DropdownStyleData(
                        maxHeight: 200,
                        width: MediaQuery.of(context).size.width * 0.85,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      buttonStyleData: ButtonStyleData(
                        height: 45,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                      ),
                      dropdownSearchData: DropdownSearchData(
                        searchController: TextEditingController(),
                        searchInnerWidgetHeight: 50,
                        searchInnerWidget: Container(
                          height: 50,
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 4,
                            right: 8,
                            left: 8,
                          ),
                          child: TextFormField(
                            expands: true,
                            maxLines: null,
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 8,
                              ),
                              hintText: 'Cari CCTV...',
                              hintStyle: const TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        searchMatchFn: (item, searchValue) {
                          final itemValue = item.value;
                          if (itemValue == null) return false;
                          final searchString =
                              '${itemValue.locationName ?? ''} - ${itemValue.cctvName ?? ''}'
                                  .toLowerCase();
                          return searchString
                              .contains(searchValue.toLowerCase());
                        },
                      ),
                      decoration: InputDecoration(
                        hintText: "Pilih opsi",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 10),
                      ),
                    );
                  }),

                  const SizedBox(height: 20),

                  // Save Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.saveInputCCTV();
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child:
                          const Text("Simpan", style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ).then((val) {
      controller.clearCctvInput();
    });
  }

  void _showAddVideoDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.white,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Tambah Video 30 Seconds',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        controller.clearInputDialogState();
                        Navigator.pop(context);
                      },
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Judul Video ',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(
                  onChanged: (value) => controller.videoTitle = value,
                  decoration: InputDecoration(
                    // labelText: 'Judul Video',
                    hintText: 'Masukkan Judul Video',
                    hintStyle: const TextStyle(color: Colors.grey),
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
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Link Video',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(
                  onChanged: (value) => controller.videoLink = value,
                  decoration: InputDecoration(
                    // labelText: 'Link Video',
                    hintText: 'Masukkan Link Video',
                    hintStyle: const TextStyle(color: Colors.grey),
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
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.saveInputVideo30s();
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Simpan'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showAddLiveStreamDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.white,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Tambah Live Streaming',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        controller.clearInputDialogState();
                        Navigator.pop(context);
                      },
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Judul Video',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(
                  onChanged: (value) => controller.videoTitle = value,
                  decoration: InputDecoration(
                    // labelText: 'Judul Video',
                    hintText: 'Masukkan Judul Video',
                    hintStyle: const TextStyle(color: Colors.grey),
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
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Link Video',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(
                  onChanged: (value) => controller.videoLink = value,
                  decoration: InputDecoration(
                    // labelText: 'Link Live Streaming',
                    hintText: 'Masukkan Link Streaming',
                    hintStyle: const TextStyle(color: Colors.grey),
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
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.saveInputLiveStream();
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Simpan'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'INPUT FOKUS',
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Judul Fokus',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextField(
                controller: controller.titleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              _buildSection(
                'Simpul Transportasi',
                showAddButton: true,
                onTap: _showAddTransportationNodeDialog,
              ),
              Obx(() {
                var list = controller.simpulTransportasiInput;

                return Wrap(
                  children: list
                      .map((e) => _buildItems(e.location ?? "",
                          () => controller.deleteSimpulNode(e)))
                      .toList(),
                );
              }),
              const Divider(
                color: Colors.grey,
              ),
              _buildSection(
                'CCTV',
                showAddButton: true,
                onTap: _showAddCCTVDialog,
              ),
              Obx(() {
                final cctvList = controller.cctvInput;

                return Wrap(
                  children: cctvList
                      .map((e) => _buildItems(
                          '${e.locationName ?? ''} - ${e.cctvName ?? ''}',
                          () => controller.deleteCCTVNode(e)))
                      .toList(),
                );
              }),
              const Divider(
                color: Colors.grey,
              ),
              _buildSection(
                'Link Video 30 Seconds',
                showAddButton: true,
                onTap: _showAddVideoDialog,
              ),
              Obx(() {
                final list = controller.video30sInput;

                return Wrap(
                  children: list
                      .map((e) => _buildItems(e.judul ?? "",
                          () => controller.deleteVideo30sNode(e)))
                      .toList(),
                );
              }),
              const Divider(
                color: Colors.grey,
              ),
              _buildSection(
                'Link Video Live Streaming',
                showAddButton: true,
                onTap: _showAddLiveStreamDialog,
              ),
              Obx(() {
                final list = controller.videoLiveStreamingInput;

                return Wrap(
                  children: list
                      .map((e) => _buildItems(e.judul ?? "",
                          () => controller.deleteLiveStreamNode(e)))
                      .toList(),
                );
              }),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 243, 18, 18),
                        foregroundColor:
                            const Color.fromARGB(221, 241, 239, 239),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Batal'),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        controller.onSubmitnputFocus();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Simpan'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(
    String title, {
    VoidCallback? onTap,
    bool showAddButton = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            if (showAddButton)
              ElevatedButton(
                onPressed: onTap ?? () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 13,
                    vertical: 3,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Tambah'),
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildItems(String value, VoidCallback onClear) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.all(7),
      child: Row(
        children: [
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          GestureDetector(
            onTap: onClear,
            child: const Icon(Icons.close, size: 20, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
