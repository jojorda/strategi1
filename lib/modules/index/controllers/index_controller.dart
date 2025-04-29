import 'package:get/get.dart';

class IndexController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxString title = 'STRATEGI HUB'.obs;

  void onChangeIndex() {
    switch (currentIndex.value) {
      case 0:
        title.value = 'STRATEGI HUB';
        break;
      case 1:
        title.value = 'DASHBOARD';
        break;
      case 2:
        title.value = 'LAPORAN';
        break;
      case 3:
        title.value = 'SETTING';
        break;
      default:
    }
  }
}
