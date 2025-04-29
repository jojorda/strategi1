import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/domain/entities/posko.dart';
import 'package:strategi_hub_app/domain/repositories/posko_repository.dart';

class PoskoDetailController extends GetxController {
  Rx<Posko?> posko = Rx<Posko?>(null);
  RxInt? poskoId = 0.obs;
  RxBool isLoading = false.obs;
  final PoskoRepository _poskoRepository;
  final double latitude = -7.2016;
  final double longitude = 112.7378;

  final Map<String, bool> leftFocusItems = {
    'Mobilitas Penumpang': true,
    'Mobilitas Barang': true,
    'Mobilitas Sarana Angkutan': true,
    'Kelancaran Transportasi pada Jaringan': true,
    'Kecelakaan Transportasi': true,
  };

  final Map<String, bool> rightFocusItems = {
    'Kejadian Menonjol': true,
    'Cuaca dan Peringatan': true,
    'Bencana': true,
    'Ramp Check': true,
  };

  PoskoDetailController(this._poskoRepository);

  @override
  void onInit() {
    super.onInit();
    poskoId?.value = Get.arguments;
    if (poskoId?.value != null) {
      fetchPoskoDetail();
    }
  }

  Future<void> fetchPoskoDetail() async {
    isLoading.value = true;

    try {
      final response =
          await _poskoRepository.getPoskoDetail(poskoId?.value as int);
      posko.value = response;
      isLoading.value = false;
    } catch (e) {
      debugPrint(e.toString());
      isLoading.value = false;
    }
  }

  Map<String, bool> modifyFocusItems(
      List<String> fokusPantau, Map<String, bool> items) {
    Map<String, bool> modifiedItems = Map.from(items);

    if (fokusPantau.isEmpty) {
      modifiedItems.updateAll((key, value) => false);
      return modifiedItems;
    }

    modifiedItems.forEach((key, value) {
      bool isInFocus = fokusPantau.any((fokus) =>
          fokus.toLowerCase() == key.toLowerCase() ||
          key.toLowerCase().contains(fokus.toLowerCase()) ||
          fokus.toLowerCase().contains(key.toLowerCase()));

      modifiedItems[key] = isInFocus;
    });

    return modifiedItems;
  }
}
