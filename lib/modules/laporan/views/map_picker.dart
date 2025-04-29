import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:map_location_picker/map_location_picker.dart';
import 'package:strategi_hub_app/components/appbars/custom_appbar.dart';
import 'package:strategi_hub_app/components/custom_primary_button.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/add_laporan_controller.dart';

class MapPickerPage extends StatefulWidget {
  const MapPickerPage({super.key});

  @override
  State<MapPickerPage> createState() => _MapPickerPageState();
}

class _MapPickerPageState extends State<MapPickerPage> {
  String address = "null";
  String autocompletePlace = "null";
  Prediction? initialValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Pilih Lokasi',
      ),
      body: MapLocationPicker(
        apiKey: dotenv.env['MAP_API_KEY']!,
        popOnNextButtonTaped: true,
        hideBackButton: false,
        currentLatLng: const LatLng(-6.207214, 106.818872),
        debounceDuration: const Duration(milliseconds: 500),
        hideSearchBar: true,
        hideLocationButton: true,
        hideMapTypeButton: true,
        bottomCardBuilder: (context, result, address) {
          return Container(
            margin:
                EdgeInsets.fromLTRB(Sizes.s20, Sizes.s0, Sizes.s20, Sizes.s30),
            padding: EdgeInsets.all(Sizes.s16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.s18),
                color: AppColors.whiteColor),
            child: Column(
              children: [
                Text(address),
                SizedBox(height: Sizes.s20),
                CustomPrimaryButton(
                    onPress: () {
                      if (result?.geometry.location.lat != null) {
                        AddLaporanController laporanController = Get.find();
                        laporanController.isLoadMap.value = true;
                        laporanController.latlongLocation.value = LatLng(0, 0);
                        laporanController.latlongLocation.value = LatLng(
                            result!.geometry.location.lat,
                            result.geometry.location.lng);
                        laporanController.isLoadMap.value = false;
                      }
                      Get.back();
                    },
                    text: 'Pilih')
              ],
            ),
          );
        },
        onNext: (GeocodingResult? result) {
          if (result != null) {
            setState(() {
              address = result.formattedAddress ?? "";
            });
          }
        },
        onSuggestionSelected: (PlacesDetailsResponse? result) {
          if (result != null) {
            setState(() {
              autocompletePlace = result.result.formattedAddress ?? "";
            });
          }
        },
      ),
    );
  }
}
