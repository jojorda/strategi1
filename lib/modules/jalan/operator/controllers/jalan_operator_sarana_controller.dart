import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/data/models/request/moda_operator_base_request.dart';
import 'package:strategi_hub_app/domain/entities/operator.dart';
import 'package:strategi_hub_app/domain/entities/sarana.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';

class JalanOperatorSaranaController extends GetxController {
  final ModaRepository _modaRepository;

  JalanOperatorSaranaController(this._modaRepository);

  // OperatorId
  Rx<Operator?> operator = Rx<Operator?>(null);

  // Sarana Data
  RxBool isLoadingOperatorsData = false.obs;
  Rx<List<Sarana>> saranaListData = Rx<List<Sarana>>([]);
  RxInt saranaTotalData = 0.obs;
  RxString currentSearchSarana = ''.obs;

  // Pagination
  RxInt page = 1.obs;

  @override
  void onInit() {
    final arguments = Get.arguments;
    operator.value = arguments;

    fetchData(true);
    ever(page, (_) => fetchData(false));

    super.onInit();
  }

  void fetchData(bool isRefresh) {
    getSaranaOperatorData(isRefresh: isRefresh);
  }

  void getSaranaOperatorData(
      {bool isRefresh = false, String search = ''}) async {
    if (isLoadingOperatorsData.value) return;

    try {
      isLoadingOperatorsData.value = true;
      final result = await _modaRepository.getOperatorSaranaList(
        ModaType.jalan,
        operator.value?.id ?? "",
        ModaOperatorBaseRequest(
          page: page.value,
          search: search.trim().isNotEmpty ? search : null,
        ),
      );
      saranaListData.value = result.listSarana;
      saranaTotalData.value = result.total;
    } catch (e) {
      saranaListData.value = [];
      debugPrint(e.toString());
    } finally {
      isLoadingOperatorsData.value = false;
    }
  }

  void searchSarana(String query) {
    currentSearchSarana.value = query;
    debounce(
      currentSearchSarana,
      (_) {
        getSaranaOperatorData(
            isRefresh: true, search: currentSearchSarana.value);
      },
      time: Duration(milliseconds: 500),
    );
  }
}