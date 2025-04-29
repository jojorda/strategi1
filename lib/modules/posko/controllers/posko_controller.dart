import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/domain/entities/posko.dart';
import 'package:strategi_hub_app/domain/repositories/posko_repository.dart';

class PoskoController extends GetxController {
  final PoskoRepository _poskoRepository;

  Rx<List<Posko>> poskoList = Rx<List<Posko>>([]);
  RxInt currentPage = 1.obs;
  RxInt totalPages = 1.obs;
  RxInt count = 0.obs;
  RxBool isLoading = false.obs;
  RxString currentSearch = ''.obs;

  // Sort types might include 'default', 'alphabetical', 'type', etc.
  RxString sortType = 'default'.obs;
  // Filter types might include 'all', 'booth', 'lapangan'
  RxInt selectedFilterPoskoType = 0.obs;
  RxList<PoskoType> poskoTypeOptions = RxList<PoskoType>([]);

  PoskoController(this._poskoRepository);

  @override
  void onInit() {
    super.onInit();
    fetchPoskoData();

    // When search changes, update paginated list after a debounce.
    debounce(currentSearch,
        (_) => getPaginatedPosko(page: 1, search: currentSearch.value),
        time: Duration(milliseconds: 500));

    // Whenever page, sort, or filter changes, fetch the data.
    ever(
        currentPage,
        (_) => getPaginatedPosko(
              page: currentPage.value,
              search: currentSearch.value,
            ));
  }

  Future<void> fetchPoskoData() async {
    try {
      await Future.wait([
        getPaginatedPosko(),
        getPoskoTypes(),
      ]);
      isLoading.value = false;
    } catch (e) {
      debugPrint("Error fetching posko data: $e");
      isLoading.value = false;
    }
  }

  /// Modified to use current sort and filter values if not provided explicitly.
  Future<void> getPaginatedPosko({
    int page = 1,
    String search = '',
    String? sort,
    int? filter,
  }) async {
    isLoading.value = true;
    try {
      // Use provided sort/filter or fallback to reactive values
      final currentSort = sort ?? sortType.value;
      final selectedCurrentFilter = filter ?? selectedFilterPoskoType.value;

      // Pass these values to your repository call if supported.
      final result = await _poskoRepository.getPaginatedPosko(
          page: page,
          namaPosko: search.isNotEmpty ? search : null,
          idJenisPosko: selectedCurrentFilter);

      poskoList.value = result.items ?? [];
      currentPage.value = result.page ?? page;
      totalPages.value = result.totalPages ?? 1;
      count.value = result.count ?? 0;
      isLoading.value = false;
    } catch (e) {
      debugPrint("Error in getPaginatedPosko: $e");
      isLoading.value = false;
    }
  }

  Future<void> getPoskoTypes() async {
    isLoading.value = true;
    try {
      final types = await _poskoRepository.getPoskoTypes();
      poskoTypeOptions.assignAll(types);
    } catch (e) {
      debugPrint("[REGISTER CONTROLLER] Error getting posko types: $e");
      isLoading.value = false;
    }
  }

  void onChangeSearch(String query) {
    currentSearch.value = query;
  }

  void onChangePage(int page) {
    if (page < 1 || page > totalPages.value) return;
    currentPage.value = page;
  }

  // New helper function to update the sort type.
  void onChangeSort(String newSort) {
    if (sortType.value != newSort) {
      sortType.value = newSort;
    }
  }

  // New helper function to update the filter type.
  void onChangeFilter(int newFilter) {
    if (selectedFilterPoskoType.value != newFilter) {
      selectedFilterPoskoType.value = newFilter;
    }
  }

  // New helper function to apply filter.
  void onApplyFilter() {
    getPaginatedPosko(
      page: 1,
      search: currentSearch.value,
      filter: selectedFilterPoskoType.value,
    );
  }
}
