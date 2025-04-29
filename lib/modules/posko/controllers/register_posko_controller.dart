import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/domain/entities/coordinates.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/domain/entities/posko.dart';
import 'package:strategi_hub_app/domain/repositories/posko_repository.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/modules/posko/constants/fields.dart';

class RegisterPoskoController extends GetxController {
  final PoskoRepository _poskoRepository;
  final StrategiRepository _strategiRepository;
  RxBool isLoadMap = false.obs;

  RxList<Event> eventOptions = <Event>[].obs;
  RxList<PoskoType> poskoTypeOptions = <PoskoType>[].obs;
  RxList<String> fokusPantauOptions = <String>[].obs;
  RxList<PoskoParticipant> poskoParticipantOptions = <PoskoParticipant>[].obs;
  RxList<String> selectedFokusPantau = <String>[].obs;
  Rx<PoskoRequest> poskoRequest = Rx<PoskoRequest>(PoskoRequest(namaPosko: ''));
  Rx<LatLng> latlongLocation = Rx<LatLng>(const LatLng(0, 0));
  late GoogleMapController mapController;

  RxBool isFetching = false.obs;
  RxBool isLoadingSubmit = false.obs;

  RegisterPoskoController(this._poskoRepository, this._strategiRepository);

  @override
  void onInit() {
    fetchAllData();
    super.onInit();
  }

  Future<void> fetchAllData() async {
    isFetching.value = true;
    try {
      await Future.wait([
        getFokusPantau(),
        getEventOptions(),
        getPoskoTypes(),
        getPoskoParticipants(),
      ]);
    } catch (e) {
      debugPrint("[REGISTER CONTROLLER] Error fetching all data: $e");
    } finally {
      isFetching.value = false;
    }
  }

  Future<void> getEventOptions() async {
    try {
      _strategiRepository.getEvent(EventType.all).listen((events) {
        if (events.isNotEmpty) eventOptions.assignAll(events);
      });
    } catch (e) {
      debugPrint("[REGISTER CONTROLLER] Error getting events: $e");
    }
  }

  Future<void> getFokusPantau() async {
    try {
      final fokusPantau = await _poskoRepository.getFokusPantau();
      fokusPantauOptions.assignAll(fokusPantau);
    } catch (e) {
      debugPrint("[REGISTER CONTROLLER] Error getting fokus pantau: $e");
    }
  }

  Future<void> getPoskoTypes() async {
    try {
      final types = await _poskoRepository.getPoskoTypes();
      poskoTypeOptions.assignAll(types);
    } catch (e) {
      debugPrint("[REGISTER CONTROLLER] Error getting posko types: $e");
    }
  }

  Future<void> getPoskoParticipants() async {
    try {
      final participants = await _poskoRepository.getPoskoParticipants();
      poskoParticipantOptions.assignAll(participants);
    } catch (e) {
      debugPrint("[REGISTER CONTROLLER] Error getting posko participants: $e");
    }
  }

  Future<void> onSelectMap(
    LatLng latLng,
    String address,
  ) async {
    latlongLocation.value = latLng;
    poskoRequest.value.koordinatPosko =
        Coordinates(x: latLng.latitude, y: latLng.longitude);
    onChangeFields(
        field: fieldKoordinatPosko,
        value: '${latLng.latitude}, ${latLng.longitude}');
    poskoRequest.value.lokasiPosko = address;
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: latLng,
          zoom: 15,
        ),
      ),
    );
  }

  void onChangeFields({
    String? field,
    dynamic value,
  }) {
    switch (field) {
      case fieldIdEvent:
        poskoRequest.value.idEvent = value as int?;
        break;
      case fieldIdJenisPosko:
        poskoRequest.value.idJenisPosko = value as int?;
        break;
      case fieldNamaPosko:
        poskoRequest.value.namaPosko = value ?? '';
        break;
      case fieldAlamatPosko:
        poskoRequest.value.alamatPosko = value as String?;
        break;
      case fieldUnitKerjaKoordinator:
        poskoRequest.value.unitKerjaKoordinator = value as String?;
        break;
      case fieldIdPesertaPosko:
        poskoRequest.value.idPesertaPosko = value as int?;
        break;
      case fieldKoordinatPosko:
        poskoRequest.value.koordinatPoskoStr = value as String?;
        break;
      case fieldKetuaPosko:
        poskoRequest.value.ketuaPosko = value as String?;
        break;
      case fieldNoTelpKetuaPosko:
        poskoRequest.value.noTelpKetuaPosko = value as String?;
        break;
      case fieldPicPosko:
        poskoRequest.value.picPosko = value as String?;
        break;
      case fieldNoTelpPosko:
        poskoRequest.value.noTelpPosko = value as String?;
        break;
      case fieldMasaPantauAwal:
        poskoRequest.value.masaPantauAwal = value as DateTime?;
        break;
      case fieldMasaPantauAkhir:
        poskoRequest.value.masaPantauAkhir = value as DateTime?;
        break;
      case fieldTitikPantau:
        poskoRequest.value.titikPantau = value as String?;
        break;
      case fieldFokusPantau:
        poskoRequest.value.fokusPantau = value as List<String>?;
        break;
      case fieldLampiran:
        poskoRequest.value.lampiran = value as String?;
        break;
      default:
        debugPrint("[REGISTER CONTROLLER] Unknown field: $field");
    }

    // Trigger an update to all listeners
    poskoRequest.refresh();
  }

  String convertCamelCase(String input) {
    final spaced = input.replaceAllMapped(
      RegExp(r'([a-z])([A-Z])'),
      (Match m) => '${m.group(1)} ${m.group(2)}',
    );
    return spaced[0].toUpperCase() + spaced.substring(1);
  }

  // Modify validations as needed.
  bool validateFields() {
    if (poskoRequest.value.namaPosko.isEmpty) {
      debugPrint("[REGISTER CONTROLLER] Nama Posko is required");
      Get.snackbar(
        'Error',
        'Nama Posko is required',
      );
      return false;
    }

    if ([
      fieldIdJenisPosko,
      fieldIdEvent,
      fieldNamaPosko,
      fieldAlamatPosko,
      fieldUnitKerjaKoordinator,
      fieldIdPesertaPosko,
      fieldKoordinatPosko,
      fieldKetuaPosko,
      fieldNoTelpKetuaPosko,
      fieldPicPosko,
      fieldNoTelpPosko,
      fieldMasaPantauAwal,
      fieldMasaPantauAkhir,
      fieldTitikPantau,
      fieldFokusPantau,
    ].any((field) {
      final value = poskoRequest.value.toJson()[field];
      if (value == null || value.toString().isEmpty) {
        final fieldLabel = convertCamelCase(field);
        final label = fieldLabel.replaceFirst('Id', '');

        debugPrint("[REGISTER CONTROLLER] $label is required");
        Get.snackbar(
          'Error',
          '$label is required',
        );
        return true;
      }
      return false;
    })) {
      return false;
    }

    return true;
  }

  // Method to update Fokus Pantau selections
  void onChangeFokusPantau(List<String> selectedItems) {
    selectedFokusPantau.assignAll(selectedItems);
    onChangeFields(field: fieldFokusPantau, value: selectedItems);
  }

  Future<void> createPosko() async {
    isLoadingSubmit.value = true;
    if (!validateFields()) {
      isLoadingSubmit.value = false;
      return;
    }

    try {
      await _poskoRepository.postPosko(poskoRequest.value);

      Get.snackbar(
        'Success',
        'Posko berhasil dibuat',
        duration: const Duration(seconds: 2),
        snackbarStatus: (status) {
          if (status == SnackbarStatus.CLOSED) {
            Get.back(result: {'created': true}, closeOverlays: true);
          }
        },
      );
    } catch (e) {
      debugPrint("[REGISTER CONTROLLER] Error creating posko: $e");
      Get.snackbar(
        'Error',
        'Gagal membuat posko',
      );
    } finally {
      isLoadingSubmit.value = false;
    }
  }
}
