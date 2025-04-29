import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/dummy_data.dart';

class ArteriOperatorController extends GetxController {
  RxBool isRutin = true.obs;
  RxInt groupValue = 1.obs;
  RxBool isRoutine = false.obs;
  RxInt selectedFilter = 2.obs;
  Rx<List<DateTime>> selectedRoutineRange = Rx<List<DateTime>>([]);
  RxString selectedDateRange = '01 Jan 2025 - 26 Jan 2025'.obs;
   RxString sortOrder = "".obs; // "" = no sorting, "asc" = ascending, "desc" = descending
  
  // Add a method to sort the operators
  void sortOperators(String order) {
  sortOrder.value = order;

  if (order == "asc") {
    DummyData.listOperator.sort((a, b) => a.name!.compareTo(b.name!));
  } else if (order == "desc") {
    DummyData.listOperator.sort((a, b) => b.name!.compareTo(a.name!));
  }

  update(); // Notify GetBuilder to update the UI
}

  void updateFilterDate(DateTime? firstDate, DateTime? lastDate) {
    if (firstDate != null) {
      final def = defDate(firstDate);
      final lstDate = lastDate ?? def;
      selectedRoutineRange.value = [firstDate, lstDate];
    }
  }

  DateTime defDate(DateTime firstDate) {
    switch (selectedFilter.value) {
      case 1:
        return firstDate.add(Duration(days: 6));
      case 2:
        return DateTime(firstDate.year, firstDate.month + 1, 0);
      case 3:
        return DateTime(firstDate.year, 12, 31);
      default:
        return DateTime(firstDate.year, firstDate.month, 1);
    }
  }

  Future<void> formatDateRanges(DateTime? start, DateTime? end) async {}
}
