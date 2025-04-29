import 'package:get/get.dart';
import 'package:strategi_hub_app/domain/repositories/thirty_second_repository.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

class ThirtySecondController extends GetxController {
  final ThirtySecondRepository _repository;
  final RxList<Model30SecondsGet200ResponseDataInner> thirtySeconds =
      <Model30SecondsGet200ResponseDataInner>[].obs;

  ThirtySecondController(this._repository);

  @override
  void onInit() {
    super.onInit();
    get30Seconds();
  }

  Future<void> get30Seconds() async {
    try {
      final result = await _repository.get30Seconds();
      thirtySeconds.value = result ?? [];
    } catch (e) {
      throw Exception('Failed to fetch 30 seconds: ${e.toString()}');
    }
  }
}
