import 'package:get/get.dart';
import 'package:intl/intl.dart';

class LautWilayahController extends GetxController {
  RxBool isRutin = true.obs;
  RxInt groupValue = 1.obs;
  RxString selectedDateRange = '01 Jan 2025 - 26 Jan 2025'.obs;

  Future<void> formatDateRanges(DateTime? start, DateTime? end) async {
    if (start != null && end != null) {
      switch (groupValue.value) {
        case 1:
          selectedDateRange.value =
              '${DateFormat('d MMM yyyy').format(start)} - ${DateFormat('d MMM yyyy').format(end)}';
          break;
        case 2:
          selectedDateRange.value =
              '${DateFormat('MMM yyyy').format(start)} - ${DateFormat('MMM yyyy').format(end)}';
          break;
        case 3:
          selectedDateRange.value = '${start.year}-${end.year}';
          break;
        default:
      }
    }
  }
}
