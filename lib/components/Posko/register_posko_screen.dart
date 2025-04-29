import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/constant.dart';
import 'package:strategi_hub_app/helpers/custom_date_picker.dart';
import 'package:strategi_hub_app/modules/posko/constants/fields.dart';
import 'package:strategi_hub_app/modules/posko/controllers/register_posko_controller.dart';
import 'package:strategi_hub_app/components/forms/custom_text_field.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:strategi_hub_app/components/Posko/map_picker.dart';

class RegisterPoskoScreen extends GetView<RegisterPoskoController> {
  BuildContext get context => Get.context!;
  static const routeName = '/posko-create';
  const RegisterPoskoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'POSKO',
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Jenis Posko Dropdown
                Obx(() => DropdownButtonFormField<int>(
                      isExpanded: true,
                      decoration: InputDecoration(
                        labelText: 'Jenis Posko',
                        labelStyle: TextStyle(color: Colors.grey[700]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),
                      selectedItemBuilder: (context) {
                        return controller.poskoTypeOptions.map((type) {
                          return Row(
                            children: [
                              Expanded(
                                child: Text(
                                  type.nama ?? '',
                                  style: const TextStyle(color: Colors.black),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          );
                        }).toList();
                      },
                      onTap: () => controller.getPoskoTypes(),
                      value: controller.poskoRequest.value.idJenisPosko,
                      items: controller.poskoTypeOptions
                          .map(
                            (type) => DropdownMenuItem<int>(
                              value: type.id,
                              child: Text(
                                type.nama ?? '',
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) => controller.onChangeFields(
                          field: fieldIdJenisPosko, value: value),
                    )),
                const SizedBox(height: 8),
                // Event Dropdown
                Obx(() => DropdownButtonFormField<int>(
                      isExpanded: true,
                      decoration: InputDecoration(
                        labelText: 'Event',
                        labelStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),
                      selectedItemBuilder: (context) {
                        return controller.eventOptions.map((event) {
                          return Text(
                            event.nama,
                            style: const TextStyle(color: Colors.black),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          );
                        }).toList();
                      },
                      onTap: () => controller.getEventOptions(),
                      value: controller.poskoRequest.value.idEvent,
                      items: controller.eventOptions
                          .map(
                            (event) => DropdownMenuItem<int>(
                              value: event.id,
                              child: Text(
                                event.nama,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) => controller.onChangeFields(
                          field: fieldIdEvent, value: value),
                    )),
                const SizedBox(height: 10),
                // Nama Posko Text Field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nama Posko',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      const SizedBox(height: 2),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                        onChanged: (value) => controller.onChangeFields(
                            field: fieldNamaPosko, value: value),
                      )
                    ],
                  ),
                ),
                // Alamat Posko Text Field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Alamat Posko',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      const SizedBox(height: 2),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                        onChanged: (value) => controller.onChangeFields(
                            field: fieldAlamatPosko, value: value),
                      )
                    ],
                  ),
                ),
                // Unit Kerja Koordinator Text Field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Unit Kerja Koordinator',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      const SizedBox(height: 2),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                        onChanged: (value) => controller.onChangeFields(
                            field: fieldUnitKerjaKoordinator, value: value),
                      )
                    ],
                  ),
                ),
                // Peserta Posko Dropdown
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Peserta Posko',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Obx(() => DropdownButtonFormField<int>(
                            isExpanded: true,
                            decoration: InputDecoration(
                              labelText: 'Pilih Peserta Posko',
                              labelStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                              ),
                            ),
                            onTap: () => controller.getPoskoParticipants(),
                            selectedItemBuilder: (context) {
                              return controller.poskoParticipantOptions
                                  .map((event) {
                                return Text(
                                  event.nama ?? '',
                                  style: const TextStyle(color: Colors.black),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                );
                              }).toList();
                            },
                            items: controller.poskoParticipantOptions
                                .map(
                                  (participant) => DropdownMenuItem<int>(
                                    value: participant.id,
                                    child: Text(
                                      participant.nama ?? '',
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) => controller.onChangeFields(
                                field: fieldIdPesertaPosko, value: value),
                          )),
                    ],
                  ),
                ),

                const SizedBox(height: 5),
                // SizedBox(height: Sizes.s10),
                Obx(
                  () => CustomTextField(
                    controller: TextEditingController(
                      text: controller.poskoRequest.value.lokasiPosko,
                    ),
                    enable: false,
                    label: 'Lokasi Posko',
                  ),
                ),
                SizedBox(height: Sizes.s7),
                Obx(() => controller.latlongLocation.value.latitude == 0 &&
                        controller.latlongLocation.value.longitude == 0
                    ? SizedBox()
                    : controller.isLoadMap.value
                        ? SizedBox()
                        : Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.s10),
                              border:
                                  Border.all(color: AppColors.lightGreyColor),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(Sizes.s10),
                              child: GoogleMap(
                                initialCameraPosition: CameraPosition(
                                  target: controller.latlongLocation.value!,
                                  zoom: 15,
                                ),
                                myLocationEnabled: true,
                                myLocationButtonEnabled: true,
                                mapType: MapType.normal,
                                onMapCreated:
                                    (GoogleMapController mapController) {
                                  controller.mapController = mapController;
                                },
                              ),
                            ),
                          )),
                SizedBox(height: Sizes.s7),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => MapPickerPage(
                              onSelect: controller.onSelectMap,
                              currentLocation: controller.latlongLocation.value,
                            ));
                      },
                      child: Container(
                        padding: EdgeInsets.all(Sizes.s8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Sizes.s16),
                            color: AppColors.primaryColor),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              AssetConstant.gmap,
                              width: Sizes.s18,
                              height: Sizes.s18,
                            ),
                            SizedBox(width: Sizes.s6),
                            Text(
                              'Pilih Lewat Peta',
                              style: Get.textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: FontSizes.s12,
                                  color: AppColors.whiteColor),
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer()
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Longitude',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Obx(
                            () => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: AbsorbPointer(
                                child: TextField(
                                  controller: TextEditingController()
                                    ..text = controller.latlongLocation.value
                                                .longitude ==
                                            0
                                        ? ''
                                        : controller
                                            .latlongLocation.value.longitude
                                            .toString(),
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 12),
                                    border: InputBorder.none,
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400]),
                                  ),
                                  enabled: false,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Latitude',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Obx(
                            () => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: AbsorbPointer(
                                child: TextField(
                                  controller: TextEditingController()
                                    ..text = controller.latlongLocation.value
                                                .latitude ==
                                            0
                                        ? ''
                                        : controller
                                            .latlongLocation.value.latitude
                                            .toString(),
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 12),
                                    border: InputBorder.none,
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400]),
                                  ),
                                  enabled: false,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Ketua Posko Text Field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Ketua Posko',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      const SizedBox(height: 2),
                      TextField(
                        controller: TextEditingController(
                            text: controller.poskoRequest.value.ketuaPosko),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                        onChanged: (value) => controller.onChangeFields(
                            field: fieldKetuaPosko, value: value),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'No Telp Ketua Posko',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 2),
                      TextField(
                        controller: TextEditingController(
                            text:
                                controller.poskoRequest.value.noTelpKetuaPosko),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                        onChanged: (value) => controller.onChangeFields(
                            field: fieldNoTelpKetuaPosko, value: value),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'PIC Posko',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 2),
                      TextField(
                        controller: TextEditingController(
                            text: controller.poskoRequest.value.picPosko),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                        onChanged: (value) => controller.onChangeFields(
                            field: fieldPicPosko, value: value),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'No Telp Posko',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 2),
                      TextField(
                        controller: TextEditingController(
                            text: controller.poskoRequest.value.noTelpPosko),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                        onChanged: (value) => controller.onChangeFields(
                            field: fieldNoTelpPosko, value: value),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Masa Pantau',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Obx(() {
                        final selectedStartDate =
                            controller.poskoRequest.value.masaPantauAwal;
                        final selectedEndDate =
                            controller.poskoRequest.value.masaPantauAkhir;
                        String getSelectedMasaPantau() {
                          if (selectedStartDate != null &&
                              selectedEndDate != null) {
                            return '${selectedStartDate.toLocal().toString().split(' ')[0]} - ${selectedEndDate.toLocal().toString().split(' ')[0]}';
                          }
                          return '';
                        }

                        return TextField(
                          controller: TextEditingController(
                              text: getSelectedMasaPantau()),
                          readOnly: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1),
                            ),
                            suffixIcon:
                                Icon(Icons.calendar_today, color: Colors.grey),
                          ),
                          onTap: () {
                            CustomDatePicker.selectDate(
                              type: PickDateType.week,
                              onSelectedDate: (startDate, endDate) {
                                if (startDate != null) {
                                  controller.onChangeFields(
                                      field: fieldMasaPantauAwal,
                                      value: startDate);
                                }
                                if (startDate != null && endDate == null) {
                                  controller.onChangeFields(
                                      field: fieldMasaPantauAkhir,
                                      value: startDate);
                                }
                                if (endDate != null) {
                                  controller.onChangeFields(
                                      field: fieldMasaPantauAkhir,
                                      value: endDate);
                                }
                              },
                            );
                          },
                        );
                      }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Titik Pantau',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 2),
                      TextField(
                        controller: TextEditingController(
                            text: controller.poskoRequest.value.titikPantau),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                        onChanged: (value) => controller.onChangeFields(
                            field: fieldTitikPantau, value: value),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Fokus Pantau',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      const SizedBox(height: 2),
                      Obx(() {
                        final displayText =
                            controller.selectedFokusPantau.join(', ');
                        return TextField(
                          readOnly: true,
                          controller: TextEditingController(text: displayText),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1),
                            ),
                          ),
                          onTap: () {
                            // Open dialog to select Fokus Pantau options
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                final fokusPantauOptions =
                                    controller.fokusPantauOptions;
                                // Create a local copy of selection based on controller state
                                List<bool> localSelected = List.generate(
                                  fokusPantauOptions.length,
                                  (index) => controller.selectedFokusPantau
                                      .contains(fokusPantauOptions[index]),
                                );
                                return AlertDialog(
                                  backgroundColor: Colors.black,
                                  contentPadding: EdgeInsets.zero,
                                  content: StatefulBuilder(
                                      builder: (context, setDialogState) {
                                    return SizedBox(
                                      width: double.maxFinite,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Flexible(
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              itemCount:
                                                  fokusPantauOptions.length,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 16.0,
                                                      vertical: 4.0),
                                                  child: Row(
                                                    children: [
                                                      Checkbox(
                                                        value: localSelected[
                                                            index],
                                                        onChanged:
                                                            (bool? value) {
                                                          setDialogState(() {
                                                            localSelected[
                                                                    index] =
                                                                value ?? false;
                                                          });
                                                        },
                                                        checkColor:
                                                            Colors.white,
                                                        activeColor:
                                                            Colors.blue,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          fokusPantauOptions[
                                                              index],
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 14),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.pink,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                    child: const Text('Batal',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                  ),
                                                ),
                                                const SizedBox(width: 8),
                                                Expanded(
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.blue,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                    child: const Text('OK',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      // Build the list of selected options
                                                      final selectedItems =
                                                          <String>[];
                                                      for (int i = 0;
                                                          i <
                                                              fokusPantauOptions
                                                                  .length;
                                                          i++) {
                                                        if (localSelected[i]) {
                                                          selectedItems.add(
                                                              fokusPantauOptions[
                                                                  i]);
                                                        }
                                                      }
                                                      // Update controller's state
                                                      controller
                                                          .onChangeFokusPantau(
                                                              selectedItems);
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        );
                      }),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                // Action Buttons
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 243, 18, 18),
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
                        onPressed: () => controller.createPosko(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
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
          Obx(() {
            return Visibility(
              visible: controller.isFetching.value ||
                  controller.isLoadingSubmit.value,
              child: Positioned.fill(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onTap: () {},
                  child: Container(
                    color: Colors.white.withAlpha(70),
                    child: BouncingLoader(),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
