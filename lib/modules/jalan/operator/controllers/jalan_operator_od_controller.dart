import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/data/models/request/moda_operator_base_request.dart';
import 'package:strategi_hub_app/domain/entities/operator.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';

class JalanOperatorOdController extends GetxController {
  final ModaRepository _modaRepository;

  JalanOperatorOdController(this._modaRepository);

  // OperatorId
  RxString operatorId = "".obs;

  // Opeator OD Data
  RxBool isLoadingOperatorsOdData = false.obs;
  Rx<List<OperatorOd?>> operatorOdData = Rx<List<OperatorOd?>>([]);
  RxInt operatorOdDataCount = 0.obs;
  RxString currentSearchOd = ''.obs;

  // Pagination
  RxInt page = 1.obs;

  @override
  void onInit() {
    final arguments = Get.arguments;
    operatorId.value = arguments;

    fetchData(true);
    ever(page, (_) => fetchData(false));

    super.onInit();
  }

  void fetchData(bool isRefresh) {
    getOperatorOdData(isRefresh: isRefresh);
  }

  void getOperatorOdData({bool isRefresh = false, String search = ''}) async {
    if (isLoadingOperatorsOdData.value) return;

    try {
      isLoadingOperatorsOdData.value = true;
      final result = await _modaRepository.getOperatorOdList(
        ModaType.jalan,
        operatorId.value,
        ModaOperatorBaseRequest(
          page: 1,
          search: search.trim().isNotEmpty ? search : null,
        ),        
      );
      operatorOdData.value = result.operatorOds;
      operatorOdDataCount.value = result.total;
    } catch (e) {
      operatorOdData.value = [];
      debugPrint('Failed to fetch operators data: ${e.toString()}');
    } finally {
      isLoadingOperatorsOdData.value = false;
    }
  }
  
  void searchOd(String query) {
    currentSearchOd.value = query;
    debounce(
      currentSearchOd,
      (_) {
        getOperatorOdData(
            isRefresh: true, search: currentSearchOd.value);
      },
      time: Duration(milliseconds: 500),
    );
  }
}