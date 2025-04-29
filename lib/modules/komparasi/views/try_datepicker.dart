import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/appbars/custom_appbar.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateRangePickerPage extends StatefulWidget {
  const DateRangePickerPage({Key? key}) : super(key: key);

  @override
  _DateRangePickerPageState createState() => _DateRangePickerPageState();
}

class _DateRangePickerPageState extends State<DateRangePickerPage> {
  String _selectedDate = 'Belum memilih rentang tanggal';
  String _selectedRange = 'Belum memilih rentang bulan';

  // Fungsi callback saat tanggal dipilih
  // void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
  //   setState(() {
  //     // Cek jika tipe selection adalah PickerDateRange (rentang tanggal)
  //     if (args.value is PickerDateRange) {
  //       final PickerDateRange range = args.value;
  //       final String startDate = range.startDate != null
  //           ? '${range.startDate!.day}/${range.startDate!.month}/${range.startDate!.year}'
  //           : '';
  //       final String endDate = range.endDate != null
  //           ? '${range.endDate!.day}/${range.endDate!.month}/${range.endDate!.year}'
  //           : '';
  //       _selectedDate = '$startDate - $endDate';
  //     }
  //   });
  // }
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      final PickerDateRange range = args.value;
      final DateTime? start = range.startDate;
      final DateTime? end = range.endDate;

      // Format tampilan menjadi: Mar 2024 - Mei 2024
      final String startStr =
          start != null ? DateFormat('MMM yyyy').format(start) : '';
      final String endStr =
          end != null ? DateFormat('MMM yyyy').format(end) : '';

      setState(() {
        _selectedRange = (startStr.isNotEmpty && endStr.isNotEmpty)
            ? '$startStr - $endStr'
            : 'Belum memilih rentang bulan';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Pilih Rentang Waktu',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Tampilan Date Range Picker
            SfDateRangePicker(
              backgroundColor: AppColors.whiteColor,
              selectionMode: DateRangePickerSelectionMode.range,
              onSelectionChanged: _onSelectionChanged,
              headerStyle: DateRangePickerHeaderStyle(
                  textStyle: Get.textTheme.bodyLarge,
                  backgroundColor: AppColors.whiteColor),
              yearCellStyle: DateRangePickerYearCellStyle(
                leadingDatesTextStyle: Get.textTheme.bodyMedium!
                    .copyWith(color: AppColors.redColor),
                textStyle: Get.textTheme.bodyMedium!
                    .copyWith(color: AppColors.primaryColor),
              ),
              monthViewSettings: DateRangePickerMonthViewSettings(
                // Mengubah style teks untuk header hari (Senin, Selasa, Rabu, dst.)
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
              view: DateRangePickerView.year,
            ),
            const SizedBox(height: 20),
            // Menampilkan rentang tanggal yang dipilih
            Text(
              'Rentang tanggal terpilih:',
              style: Get.textTheme.bodyMedium,
            ),
            const SizedBox(height: 10),
            Text(
              _selectedDate,
              style: Get.textTheme.bodyMedium,
            ),

            const SizedBox(height: 40),
            SfDateRangePicker(
              view: DateRangePickerView
                  .decade, // Menampilkan tampilan tahun (12 bulan)
              selectionMode:
                  DateRangePickerSelectionMode.range, // Memilih range bulan
              onSelectionChanged: _onSelectionChanged,
              allowViewNavigation: false,
              selectionColor:
                  Colors.blueAccent, // Warna untuk bulan yang dipilih
              startRangeSelectionColor: Colors.green, // Warna untuk bulan awal
              endRangeSelectionColor: Colors.red, // Warna untuk bulan akhir
              rangeSelectionColor:
                  Colors.lightBlueAccent.withOpacity(0.5), // Warna tengah
              headerStyle: const DateRangePickerHeaderStyle(
                textAlign: TextAlign.center,
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Rentang bulan terpilih:',
              style: Get.textTheme.bodyMedium,
            ),
            const SizedBox(height: 10),
            Text(
              _selectedRange,
              style: Get.textTheme.bodyMedium,
            ),
            SfDateRangePicker(
              allowViewNavigation: false,
              view: DateRangePickerView.year,
              selectionMode: DateRangePickerSelectionMode.range,
              onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {},
            )
          ],
        ),
      ),
    );
  }
}
