import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:map_location_picker/map_location_picker.dart';
import 'package:strategi_hub_app/components/custom_primary_button.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class MapPickerPage extends StatefulWidget {
  final Function(LatLng, String) onSelect;
  final LatLng currentLocation;

  const MapPickerPage({
    super.key,
    required this.onSelect,
    required this.currentLocation,
  });

  @override
  State<MapPickerPage> createState() => _MapPickerPageState();
}

class _MapPickerPageState extends State<MapPickerPage> {
  String address = "null";
  String autocompletePlace = "null";
  Prediction? initialValue;
  TextEditingController searchController = TextEditingController();
  List<Prediction> searchResults = [];
  bool isSearching = false;
  late GoogleMapController _mapController;
  final Rx<LatLng?> _selectedLocation = Rx<LatLng?>(null);

  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }

  Future<void> getCurrentLocation() async {
    if (widget.currentLocation.latitude == 0 &&
        widget.currentLocation.longitude == 0) {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        Get.back();
        Get.snackbar('Perhatian', 'Layanan lokasi tidak aktif');
      }
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          Get.back();
          Get.snackbar('Perhatian', 'Izin lokasi tidak diberikan');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        Get.back();
        Get.snackbar('Perhatian', 'Izin lokasi tidak diberikan');
      }

      final location = await Geolocator.getCurrentPosition()
          .then((value) => LatLng(value.latitude, value.longitude));
      setState(() {
        _selectedLocation.value = location;
      });
      return;
    }
    setState(() {
      _selectedLocation.value = widget.currentLocation;
    });
  }

  // Search places using Google Places API
  void searchPlaces(String query) async {
    if (query.isEmpty) {
      setState(() {
        searchResults = [];
        isSearching = false;
      });
      return;
    }

    setState(() {
      isSearching = true;
    });

    final sessionToken = DateTime.now().millisecondsSinceEpoch.toString();
    final placesApiClient = GoogleMapsPlaces(
      apiKey: dotenv.env['MAP_API_KEY']!,
      apiHeaders: {"X-Goog-FieldMask": "places.id,places.formattedAddress"},
    );

    try {
      final response = await placesApiClient.autocomplete(
        query,
        sessionToken: sessionToken,
        region: 'id', // Indonesia
        language: 'id',
      );

      setState(() {
        searchResults = response.predictions;
        isSearching = false;
      });
    } catch (e) {
      debugPrint('Error searching places: $e');
      setState(() {
        isSearching = false;
      });
    }
  }

  // Navigate to selected location
  void goToLocation(Prediction prediction) async {
    final placesApiClient = GoogleMapsPlaces(
      apiKey: dotenv.env['MAP_API_KEY']!,
    );

    try {
      final details = await placesApiClient.getDetailsByPlaceId(
        prediction.placeId ?? '',
      );

      if (details.result.geometry?.location != null) {
        final location = LatLng(
          details.result.geometry!.location.lat,
          details.result.geometry!.location.lng,
        );

        _selectedLocation.value = location;
        // Update the map
        _mapController.animateCamera(
          CameraUpdate.newLatLngZoom(location, 15),
        );

        setState(() {
          address = details.result.formattedAddress ?? '';
          searchResults = [];
          searchController.text = details.result.name ?? '';
        });
      }
    } catch (e) {
      debugPrint('Error getting place details: $e');
    }
  }

  void onSelect() {
    if (_selectedLocation.value == null) return;
    widget.onSelect(_selectedLocation.value!, address);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(() {
            if (_selectedLocation.value != null) {
              return MapLocationPicker(
                apiKey: dotenv.env['MAP_API_KEY']!,
                popOnNextButtonTaped: true,
                hideBackButton: true,
                currentLatLng: _selectedLocation.value,
                debounceDuration: const Duration(milliseconds: 500),
                hideSearchBar: true,
                hideLocationButton: true,
                hideMapTypeButton: true,
                mapType: MapType.normal,
                bottomCardBuilder: (context, result, address) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(
                        Sizes.s20, Sizes.s0, Sizes.s20, Sizes.s30),
                    padding: EdgeInsets.all(Sizes.s16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Sizes.s18),
                        color: AppColors.whiteColor),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(address),
                        SizedBox(height: Sizes.s20),
                        CustomPrimaryButton(
                            onPress: () {
                              if (result?.geometry.location.lat != null) {
                                widget.onSelect(
                                    LatLng(result!.geometry.location.lat,
                                        result.geometry.location.lng),
                                    address);
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
                      _selectedLocation.value = LatLng(
                          result.geometry.location.lat,
                          result.geometry.location.lng);
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
              );
            } else {
              return Positioned.fill(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onTap: () {},
                  child: Container(
                    color: Colors.white.withAlpha(70),
                    child: BouncingLoader(),
                  ),
                ),
              );
            }
          }),

          // Custom search field at the top with auto-complete results
          Positioned(
            top: 16,
            left: 16,
            right: 16,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Cari lokasi',
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    ),
                    onChanged: (value) => searchPlaces(value),
                  ),
                ),
                if (searchResults.isNotEmpty)
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    constraints: BoxConstraints(maxHeight: 200),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: searchResults.length,
                      itemBuilder: (context, index) {
                        final prediction = searchResults[index];
                        return ListTile(
                          title: Text(prediction.description ?? ''),
                          onTap: () {
                            goToLocation(prediction);
                          },
                        );
                      },
                    ),
                  ),
                if (isSearching)
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(child: CircularProgressIndicator()),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
