import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/domain/entities/jalan_korlantas.dart';

class JalanKorlantasController extends GetxController {
  GoogleMapController? mapController;

  RxBool isLoading = false.obs;
  final Rx<JalanKorlantasEntity?> dataKorlantas =
      Rx<JalanKorlantasEntity?>(null);
  RxString defaultMessage = ''.obs;
  final Set<Marker> markers = {};

  @override
  void onInit() {
    super.onInit();
    dataKorlantas.value = Get.arguments;

    if (dataKorlantas.value == null) {
      defaultMessage.value = 'Tidak ada data Korlantas';
    }

    final lat = parseLatLong(dataKorlantas.value?.latPolres);
    final lon = parseLatLong(dataKorlantas.value?.lonPolres);
    if (lat != null && lon != null) {
      markers.add(
        Marker(
          markerId: const MarkerId('accident_location'),
          position: LatLng(lat, lon),
          infoWindow: const InfoWindow(title: 'Lokasi Kecelakaan'),
        ),
      );
    }
  }

  double? parseLatLong(String? value) {
    if (value == null) return null;

    return double.tryParse(value);
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  String? formatFullDate(String? rawDateTime) {
    if (rawDateTime == null) return null;
    try {
      final date = DateTime.parse(rawDateTime);
      return DateFormat('EEEE, dd MMMM yyyy', 'id_ID').format(date);
    } catch (_) {
      return null;
    }
  }

  String? formatTimeOnly(String? rawDateTime) {
    if (rawDateTime == null) return null;
    try {
      final date = DateTime.parse(rawDateTime);
      return DateFormat('HH:mm:ss').format(date);
    } catch (_) {
      return null;
    }
  }
}
