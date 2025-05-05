import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/custom_primary_button.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CustomDatePicker {
  static selectDate(
      {required Function(DateTime?, DateTime?) onSelectedDate,
      required PickDateType type,
      int? maxRange,
      int? radioButtonIndex,
      List<DateTime?>? initialDates}) {
    RxString selectedDate = '-'.obs;
    DateTime? selectedDate1;
    DateTime? selectedDate2;

    void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
      if (args.value is PickerDateRange) {
        final PickerDateRange range = args.value;
        
        // Khusus untuk bulanan (radioButtonIndex == 2), validasi tahun maksimal 1
        if (radioButtonIndex == 2 && range.startDate != null && range.endDate != null) {
          // Jika tahun awal dan akhir berbeda lebih dari 1
          if (range.endDate!.year - range.startDate!.year > 0) {
            // Tampilkan dialog peringatan
            Get.dialog(
              Dialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                backgroundColor: AppColors.whiteColor,
                child: Container(
                  padding: EdgeInsets.all(Sizes.s20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Rentang waktu yang dapat dipilih adalah 1 tahun. Untuk melihat grafik bulanan dalam rentang waktu lebih dari 1 tahun, anda dapat mengakses Strategi Hub Versi Web',
                        textAlign: TextAlign.center,
                        style: Get.textTheme.bodyMedium!.copyWith(color: AppColors.blackColor),
                      ),
                      SizedBox(height: Sizes.s16),
                      CustomPrimaryButton(
                        text: 'Oke',
                        onPress: () => Get.back(),
                        bgColor: Color(0xFF8A0D39)
                      ),
                    ],
                  ),
                ),
              ),
            );
            // Gunakan bulan terakhir dari tahun yang sama sebagai endDate
            final DateTime lastMonthSameYear = DateTime(range.startDate!.year, 12, 31);
            selectedDate1 = range.startDate;
            selectedDate2 = lastMonthSameYear;
            
            final String startDate = '${selectedDate1!.day}/${selectedDate1!.month}/${selectedDate1!.year}';
            final String endDate = '${selectedDate2!.day}/${selectedDate2!.month}/${selectedDate2!.year}';
            selectedDate.value = '$startDate - $endDate';
            return;
          }
        }
        
        // Kalau tidak masalah, set nilai normal
        selectedDate1 = range.startDate;
        selectedDate2 = range.endDate;
        final String startDate = range.startDate != null
            ? '${range.startDate!.day}/${range.startDate!.month}/${range.startDate!.year}'
            : '';
        final String endDate = range.endDate != null
            ? '${range.endDate!.day}/${range.endDate!.month}/${range.endDate!.year}'
            : '';
        selectedDate.value = '$startDate - $endDate';
      }
    }

    final PickerDateRange? initialRange =
        (initialDates != null && initialDates.length == 2)
            ? PickerDateRange(initialDates[0], initialDates[1])
            : null;

    void handleSelect() {
      // Biarkan validasi date range sesuai tipe berjalan normal
      if (selectedDate1 != null && selectedDate2 != null) {
        // Validasi untuk mode bulanan (tambahan validasi khusus)
        if (radioButtonIndex == 2) {
          // Jika tahun awal dan akhir berbeda lebih dari 1
          if (selectedDate2!.year - selectedDate1!.year > 0) {
            Get.dialog(
              Dialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                backgroundColor: AppColors.whiteColor,
                child: Container(
                  padding: EdgeInsets.all(Sizes.s20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Rentang waktu yang dapat dipilih adalah 1 tahun. Untuk melihat grafik bulanan dalam rentang waktu lebih dari 1 tahun, anda dapat mengakses Strategi Hub Versi Web',
                        textAlign: TextAlign.center,
                        style: Get.textTheme.bodyMedium!.copyWith(color: AppColors.blackColor),
                      ),
                      SizedBox(height: Sizes.s16),
                      CustomPrimaryButton(
                        text: 'Oke',
                        onPress: () => Get.back(),
                        bgColor: Color(0xFF8A0D39)
                      ),
                    ],
                  ),
                ),
              ),
            );
            return;
          }
        }
        
        // Validasi maxRange yang sudah ada
        if (maxRange != null && selectedDate2!.difference(selectedDate1!).inDays + 1 > maxRange) {
          Get.snackbar(
            'Invalid Selection',
            'The selected date range cannot exceed $maxRange days.',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
          return;
        }
        
        onSelectedDate(selectedDate1, selectedDate2);
        Get.back();
      } else if (selectedDate1 != null && selectedDate2 == null && type == PickDateType.week) {
        // Khusus untuk PickDateType.week, tampilkan dialog jika hanya ada satu tanggal
        Get.dialog(
          Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: AppColors.whiteColor,
            child: Container(
              padding: EdgeInsets.all(Sizes.s20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Maaf, rentang waktu yang dapat dipilih minimal 2 hari!',
                    textAlign: TextAlign.center,
                    style: Get.textTheme.bodyMedium!.copyWith(color: AppColors.blackColor),
                  ),
                  SizedBox(height: Sizes.s16),
                  CustomPrimaryButton(
                    text: 'Oke',
                    onPress: () => Get.back(),
                    bgColor: Color(0xFF8A0D39)
                  ),
                ],
              ),
            ),
          ),
        );
        return;
      } else {
        // Jika tidak ada tanggal yang dipilih, tetap tutup dialog
        onSelectedDate(selectedDate1, selectedDate2);
        Get.back();
      }
    }

    switch (type) {
      case PickDateType.week:
        Get.dialog(Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: AppColors.whiteColor,
          child: Padding(
            padding: EdgeInsets.all(Sizes.s20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: Sizes.s280,
                    child: SfDateRangePicker(
                      backgroundColor: AppColors.whiteColor,
                      selectionMode: DateRangePickerSelectionMode.range,
                      onSelectionChanged: onSelectionChanged,
                      initialSelectedRange: initialRange,
                      selectableDayPredicate: (DateTime date) {
                        return date.isBefore(DateTime.now().add(Duration(days: 0)));
                      },
                      headerStyle: DateRangePickerHeaderStyle(
                          textStyle: Get.textTheme.bodyLarge,
                          backgroundColor: AppColors.whiteColor),
                      yearCellStyle: DateRangePickerYearCellStyle(
                        textStyle: Get.textTheme.bodyMedium!
                            .copyWith(color: AppColors.primaryColor),
                      ),
                      monthViewSettings: DateRangePickerMonthViewSettings(
                        viewHeaderStyle: DateRangePickerViewHeaderStyle(
                          textStyle: Get.textTheme.bodyLarge!.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: FontSizes.s14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      monthCellStyle: DateRangePickerMonthCellStyle(
                          blackoutDateTextStyle: Get.textTheme.bodyMedium,
                          textStyle: const TextStyle(color: Colors.black),
                          rangeSelectionColor: Colors.amber,disabledDatesTextStyle: TextStyle(
                            color: Colors.grey[400],
                          ),),
                      rangeTextStyle: Get.textTheme.bodyMedium,
                      selectionTextStyle: Get.textTheme.bodyMedium!
                          .copyWith(color: AppColors.whiteColor),
                      view: DateRangePickerView.month,
                    ),
                  ),
                  SizedBox(height: Sizes.s10),
                  Row(
                    children: [
                      Expanded(
                        child: CustomPrimaryButton(
                          text: 'Batal',
                          onPress: Get.back,
                          bgColor: Color(0xFF8A0D39),
                        ),
                      ),
                      SizedBox(
                        width: Sizes.s16,
                      ),
                      Expanded(
                        child: CustomPrimaryButton(
                          text: 'Pilih',
                          onPress: handleSelect,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
        break;
      case PickDateType.month:
        Get.dialog(Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: AppColors.whiteColor,
          child: Padding(
            padding: EdgeInsets.all(Sizes.s20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: Sizes.s280,
                    child: SfDateRangePicker(
                      backgroundColor: AppColors.whiteColor,
                      selectionMode: DateRangePickerSelectionMode.range,
                      onSelectionChanged: onSelectionChanged,
                      initialSelectedRange: initialRange,
                      headerStyle: DateRangePickerHeaderStyle(
                          textStyle: Get.textTheme.bodyLarge,
                          backgroundColor: AppColors.whiteColor),
                      yearCellStyle: DateRangePickerYearCellStyle(
                        textStyle: Get.textTheme.bodyMedium!
                            .copyWith(color: AppColors.primaryColor),
                      ),
                      monthViewSettings: DateRangePickerMonthViewSettings(
                        viewHeaderStyle: DateRangePickerViewHeaderStyle(
                          textStyle: Get.textTheme.bodyLarge!.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: FontSizes.s14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      monthCellStyle: DateRangePickerMonthCellStyle(
                          blackoutDateTextStyle: Get.textTheme.bodyMedium,
                          textStyle: const TextStyle(color: Colors.black),
                          rangeSelectionColor: Colors.amber,disabledDatesTextStyle: TextStyle(
                            color: Colors.grey[400],
                          ),),
                      rangeTextStyle: Get.textTheme.bodyMedium,
                      selectionTextStyle: Get.textTheme.bodyMedium!
                          .copyWith(color: AppColors.whiteColor),
                      view: DateRangePickerView.year,
                      allowViewNavigation: false,
                    ),
                  ),
                  SizedBox(height: Sizes.s10),
                  Row(
                    children: [
                      Expanded(
                        child: CustomPrimaryButton(
                          text: 'Batal',
                          onPress: Get.back,
                          bgColor: Color(0xFF8A0D39),
                        ),
                      ),
                      SizedBox(
                        width: Sizes.s16,
                      ),
                      Expanded(
                        child: CustomPrimaryButton(
                          text: 'Pilih',
                          onPress: handleSelect,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
        break;
      case PickDateType.year:
        Get.dialog(Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: AppColors.whiteColor,
          child: Padding(
            padding: EdgeInsets.all(Sizes.s20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: Sizes.s280,
                    child: SfDateRangePicker(
                      backgroundColor: AppColors.whiteColor,
                      selectionMode: DateRangePickerSelectionMode.range,
                      onSelectionChanged: onSelectionChanged,
                      initialSelectedRange: initialRange,
                      headerStyle: DateRangePickerHeaderStyle(
                          textStyle: Get.textTheme.bodyLarge,
                          backgroundColor: AppColors.whiteColor),
                      yearCellStyle: DateRangePickerYearCellStyle(
                        textStyle: Get.textTheme.bodyMedium!
                            .copyWith(color: AppColors.primaryColor),
                      ),
                      monthViewSettings: DateRangePickerMonthViewSettings(
                        viewHeaderStyle: DateRangePickerViewHeaderStyle(
                          textStyle: Get.textTheme.bodyLarge!.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: FontSizes.s14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      monthCellStyle: DateRangePickerMonthCellStyle(
                          blackoutDateTextStyle: Get.textTheme.bodyMedium,
                          textStyle: const TextStyle(color: Colors.black),
                          rangeSelectionColor: Colors.amber),
                      rangeTextStyle: Get.textTheme.bodyMedium,
                      selectionTextStyle: Get.textTheme.bodyMedium!
                          .copyWith(color: AppColors.whiteColor),
                      view: DateRangePickerView.decade,
                      allowViewNavigation: false,
                    ),
                  ),
                  SizedBox(height: Sizes.s10),
                  Row(
                    children: [
                      Expanded(
                        child: CustomPrimaryButton(
                          text: 'Batal',
                          onPress: Get.back,
                          bgColor: Color(0xFF8A0D39),
                        ),
                      ),
                      SizedBox(
                        width: Sizes.s16,
                      ),
                      Expanded(
                        child: CustomPrimaryButton(
                          text: 'Pilih',
                          onPress: handleSelect,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
        break;
    }
  }

  static pickDate({required Function(DateTime?) onSelectedDate}) {
    DateTime? selectDate;
    void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
      selectDate = args.value;
    }

    Get.dialog(Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: AppColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.all(Sizes.s20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: Sizes.s280,
                child: SfDateRangePicker(
                  backgroundColor: AppColors.whiteColor,
                  selectionMode: DateRangePickerSelectionMode.single,
                  headerStyle: DateRangePickerHeaderStyle(
                      textStyle: Get.textTheme.bodyLarge,
                      backgroundColor: AppColors.whiteColor),
                  yearCellStyle: DateRangePickerYearCellStyle(
                    textStyle: Get.textTheme.bodyMedium!
                        .copyWith(color: AppColors.primaryColor),
                  ),
                  monthViewSettings: DateRangePickerMonthViewSettings(
                    viewHeaderStyle: DateRangePickerViewHeaderStyle(
                      textStyle: Get.textTheme.bodyLarge!.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: FontSizes.s14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  monthCellStyle: DateRangePickerMonthCellStyle(
                      blackoutDateTextStyle: Get.textTheme.bodyMedium,
                      textStyle: const TextStyle(color: Colors.black),
                      rangeSelectionColor: Colors.amber),
                  rangeTextStyle: Get.textTheme.bodyMedium,
                  selectionTextStyle: Get.textTheme.bodyMedium!
                      .copyWith(color: AppColors.whiteColor),
                  view: DateRangePickerView.month,
                  onSelectionChanged: onSelectionChanged,
                ),
              ),
              SizedBox(height: Sizes.s10),
              Row(
                children: [
                  Expanded(
                    child: CustomPrimaryButton(
                      text: 'Batal',
                      onPress: Get.back,
                      bgColor: Color(0xFF8A0D39),
                    ),
                  ),
                  SizedBox(
                    width: Sizes.s16,
                  ),
                  Expanded(
                    child: CustomPrimaryButton(
                      text: 'Pilih',
                      onPress: () {
                        onSelectedDate(selectDate);
                        Get.back();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
