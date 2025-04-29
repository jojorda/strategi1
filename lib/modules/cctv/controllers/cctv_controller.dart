import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/data/models/request/cctv_request.dart';
import 'package:strategi_hub_app/domain/entities/cctv_data.dart';
import 'package:strategi_hub_app/domain/repositories/cctv_repository.dart';

class CctvController extends GetxController {
  final CctvRepository _cctvRepository;

  Rx<List<String>> listMatra = Rx<List<String>>([]);
  Rx<List<String>> listLokasi = Rx<List<String>>([]);
  Rx<CctvData?> selectedCctv = Rx<CctvData?>(null);
  RxBool isLoading = false.obs;
  Rx<List<CctvData>?> cctvData = Rx<List<CctvData>?>(null);
  Rx<List<CctvData>?> filteredData = Rx<List<CctvData>?>(null);
  RxString searchMatra = ''.obs;
  RxString searchLokasi = ''.obs;
  RxString search = ''.obs;
  TextEditingController searchController = TextEditingController();

  CctvController(this._cctvRepository);

  @override
  void onInit() {
    super.onInit();
    fetchData(true);
    debounce(search, (_) => onSearchChange(),
        time: Duration(milliseconds: 500));
    ever(searchLokasi, (_) => onSearchChange());
    ever(searchMatra, (_) => onSearchChange());
  }

  void fetchData(bool isRefresh) async {
    isLoading.value = true;
    try {
      _cctvRepository.getCCTV(CctvRequest()).listen(
        (result) {
          if (result != null) {
            cctvData.value = result.map((cctv) {
              cctv.matra = cctv.matra?.toUpperCase();
              cctv.cityName = cctv.cityName?.toUpperCase();
              return cctv;
            }).toList();
            filteredData.value = cctvData.value;
            selectedCctv.value = cctvData.value?.firstOrNull;
            updateSearchParams();
            isLoading.value = false;
          }
        },
        onDone: () {
          isLoading.value = false;
        },
      );
    } catch (e) {
      isLoading.value = false;
    }
  }

  void updateSearchParams() {
    listMatra.value = cctvData.value
            ?.map((cctv) => cctv.matra?.capitalizeFirst ?? '')
            .toSet()
            .toList() ??
        [];
    listLokasi.value = cctvData.value
            ?.map((cctv) => cctv.provinceName?.capitalizeFirst ?? '')
            .toSet()
            .toList() ??
        [];
  }

  void onSearchChange() {
    final filtered = cctvData.value?.where((cctv) {
      final matchesMatra = searchMatra.value.isEmpty ||
          (cctv.matra
                  ?.toLowerCase()
                  .contains(searchMatra.value.toLowerCase()) ??
              false);
      final matchesLokasi = searchLokasi.value.isEmpty ||
          (cctv.provinceName
                  ?.toLowerCase()
                  .contains(searchLokasi.value.toLowerCase()) ??
              false);
      final matchesLocationName = search.value.isEmpty ||
          (cctv.locationName
                  ?.toLowerCase()
                  .contains(search.value.toLowerCase()) ??
              false) ||
          (cctv.cityName?.toLowerCase().contains(search.value.toLowerCase()) ??
              false) ||
          (cctv.provinceName
                  ?.toLowerCase()
                  .contains(search.value.toLowerCase()) ??
              false) ||
          (cctv.cctvName?.toLowerCase().contains(search.value.toLowerCase()) ??
              false);
      return matchesLokasi && matchesMatra && matchesLocationName;
    }).toList();
    filteredData.value = filtered;
  }
}
