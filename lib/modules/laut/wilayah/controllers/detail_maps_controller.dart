import 'package:get/get.dart';
import 'package:strategi_hub_app/components/google_maps_view.dart';

class DetailMapsController extends GetxController {
  RxString title = ''.obs;
  Rx<List<MarkerItem>> data = Rx<List<MarkerItem>>([]);

  @override
  void onInit() {
    final args = Get.arguments;
    if (args != null) {
      title.value = args['title'] ?? '';
      data.value = args['data'] ?? [];
    }

    super.onInit();
  }
}
