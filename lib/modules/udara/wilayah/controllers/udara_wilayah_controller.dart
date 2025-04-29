import 'package:get/get.dart';

class UdaraWilayahController extends GetxController {
  RxBool isRutin = true.obs;
  RxInt groupValue = 1.obs;
  RxString selectedDateRange = '01 Jan 2025 - 26 Jan 2025'.obs;

  Future<void> formatDateRanges(DateTime? start, DateTime? end) async {}
}
