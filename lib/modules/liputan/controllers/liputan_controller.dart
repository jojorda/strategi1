import 'package:get/get.dart';
import 'package:strategi_hub_app/data/models/request/cctv_request.dart';
import 'package:strategi_hub_app/domain/entities/stream.dart';
import 'package:strategi_hub_app/domain/repositories/cctv_repository.dart';

class LiputanController extends GetxController {
  final CctvRepository _cctvRepository;

  RxBool isLive = false.obs;
  RxBool isLoading = false.obs;
  Rx<List<String>> listType = Rx<List<String>>(['semua']);
  Rx<List<String>> listSelectedType = Rx<List<String>>(['semua']);

  Rx<List<String>> listMatra = Rx<List<String>>([]);
  Rx<List<String>> listKontributor = Rx<List<String>>([]);
  Rx<List<String>> listLokasi = Rx<List<String>>([]);

  RxString selectedMatra = ''.obs;
  RxString selectedKontributor = ''.obs;
  RxString selectedLokasi = ''.obs;
  Rx<List<DateTime?>> selectedRange = Rx<List<DateTime?>>([null, null]);

  Rx<List<StreamData>?> liputanData = Rx<List<StreamData>?>(null);
  Rx<List<StreamData>?> filteredData = Rx<List<StreamData>?>(null);
  Rx<StreamData?> selectedLiputan = Rx<StreamData?>(null);
  RxString search = ''.obs;

  LiputanController(this._cctvRepository);

  @override
  void onInit() {
    super.onInit();
    fetchData(true);
    debounce(search, (_) => onSearchChange(),
        time: Duration(milliseconds: 500));

    ever(isLive, (_) => onSearchChange());
    ever(listSelectedType, (_) => onSearchChange());
    ever(selectedKontributor, (_) => onSearchChange());
    ever(selectedMatra, (_) => onSearchChange());
    ever(selectedLokasi, (_) => onSearchChange());
    ever(selectedRange, (_) => onSearchChange());
  }

  void clearFilter() {
    selectedMatra.value = '';
    selectedKontributor.value = '';
    selectedLokasi.value = '';
    selectedRange.value = [null, null];
  }

  void updateChecklist(String value) async {
    // Only toggle the checkbox state without affecting filtering
    if (listSelectedType.value.contains(value)) {
      // If checkbox is checked, uncheck it
      listSelectedType.value = listSelectedType.value..remove(value);
    } else {
      // If checkbox is unchecked, check it
      listSelectedType.value = listSelectedType.value..add(value);
    }
    
    // Always keep 'semua' in the list to show all data regardless of checkbox state
    if (!listSelectedType.value.contains('semua')) {
      listSelectedType.value = listSelectedType.value..add('semua');
    }
    
    // Make sure the changes are reflected in the UI
    listSelectedType.refresh();
  }

  void fetchData(bool isRefresh) async {
    isLoading.value = true;
    try {
      final result = await _cctvRepository.getLiputan(CctvRequest());
      liputanData.value = result;
      filteredData.value = result;
      mapFilter();
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    }
  }

  void mapFilter() {
    listType.value = [
      'semua',
      ...?liputanData.value
          ?.map((liputan) => liputan.tipeMedia ?? '')
          .where((type) => type.isNotEmpty)
          .toSet()
    ];

    listMatra.value = liputanData.value
            ?.map((liputan) => liputan.matra ?? '')
            .where((matra) => matra.isNotEmpty)
            .toSet()
            .toList() ??
        [];

    listKontributor.value = liputanData.value
            ?.map((liputan) => liputan.kontributor ?? '')
            .where((kontributor) => kontributor.isNotEmpty)
            .toSet()
            .toList() ??
        [];

    listLokasi.value = liputanData.value
            ?.map((liputan) => liputan.lokasiStreaming ?? '')
            .where((lokasi) => lokasi.isNotEmpty)
            .toSet()
            .toList() ??
        [];
  }

  void onSearchChange() {
    final filtered = liputanData.value?.where((liputan) {
      final matchesSearch = search.value.isEmpty ||
          ((liputan.lokasiStreaming
                      ?.toLowerCase()
                      .contains(search.value.toLowerCase()) ??
                  false) ||
              ((liputan.judul
                      ?.toLowerCase()
                      .contains(search.value.toLowerCase()) ??
                  false)));
      // Always return true for type matching (completely ignore checkbox state)
      final matchestype = true;
      final matchesLive = (liputan.statusLive ?? 0) == (isLive.value ? 2 : 0);
      final matchesLocation = selectedLokasi.value.isEmpty ||
          (selectedLokasi.value.toLowerCase() ==
              liputan.lokasiStreaming?.toLowerCase());
      final matchesKontributor = selectedKontributor.value.isEmpty ||
          (selectedKontributor.value.toLowerCase() ==
              liputan.kontributor?.toLowerCase());
      final matchesMatra = selectedMatra.value.isEmpty ||
          (selectedMatra.value == liputan.matra?.toLowerCase());
      final matchesTimeFirst = selectedRange.value[0] == null ||
          (liputan.jadwalStreaming
                  ?.isAfter(selectedRange.value[0] ?? DateTime.now()) ??
              false);

      final matchesTimeSec = selectedRange.value[1] == null ||
          (liputan.jadwalStreaming
                  ?.isBefore(selectedRange.value[1] ?? DateTime.now()) ??
              false);

      return matchesSearch &&
          matchestype &&
          matchesLive &&
          matchesLocation &&
          matchesKontributor &&
          matchesMatra &&
          matchesTimeFirst &&
          matchesTimeSec;
    }).toList();
    filteredData.value = filtered;
  }
}
