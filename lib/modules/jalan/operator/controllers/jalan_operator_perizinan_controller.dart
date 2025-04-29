import 'package:get/get.dart';
import 'package:strategi_hub_app/domain/entities/operator.dart';
import 'package:strategi_hub_app/domain/entities/perizinan.dart';
import 'package:strategi_hub_app/domain/entities/sarana.dart';

class JalanOperatorPerizinanController extends GetxController {
  Rx<PerizinanPageArugment> argumentData = PerizinanPageArugment().obs;
  Rx<Sarana?> sarana = Rx<Sarana?>(null);
  Rx<Operator?> operator = Rx<Operator?>(null);

  @override
  void onInit() {
    final arguments = Get.arguments;
    argumentData.value = arguments;
    sarana.value = argumentData.value.sarana;
    operator.value = argumentData.value.operator;

    super.onInit();
  }
}
