import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/custom_radio_button.dart';
import 'package:strategi_hub_app/components/forms/custom_dropdown.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/helpers/bottom_sheet_helpers.dart';
import 'package:strategi_hub_app/helpers/custom_date_picker.dart';
import 'package:strategi_hub_app/modules/home/views/home_page.dart';

class HeaderFilter extends StatelessWidget {
  final RxBool isRutin;
  final RxInt rangeGroupvalue;
  final RxString selectedDateRange;
  final Function(DateTime?, DateTime?) onSelectedDate;
  final bool hideRoutineSelection;
  final Rx<List<DateTime?>?>? initialDates;
  final Rx<Event?>? selectedEvent;
  final RxString? eventType;
  final Rx<List<Event>?>? listEvent;
  final Function(Event?)? onSelectedEvent;
  final Function(String)? updateEventType;

  const HeaderFilter({
    super.key,
    required this.isRutin,
    required this.rangeGroupvalue,
    required this.onSelectedDate,
    required this.selectedDateRange,
    this.hideRoutineSelection = false,
    this.initialDates,
    this.selectedEvent,
    this.eventType,
    this.listEvent,
    this.onSelectedEvent,
    this.updateEventType,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Column(
      children: [
        _buildRoutineSelection(context),
        SizedBox(
            height:
                isUnfolded ? Sizes.s5 : (isSmallScreen ? Sizes.s5 : Sizes.s10)),
        _buildDateRangeRow(context),
      ],
    );
  }

  Widget _buildRoutineSelection(context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
    return Visibility(
      visible: !hideRoutineSelection,
      child: Obx(() => Row(
            children: [
              _buildRoutineSwitch(context),
              Expanded(
                child: Text(
                  isRutin.value ? 'Rutin' : 'Seasonal',
                  style: Get.textTheme.labelMedium!.copyWith(
                      fontSize: isUnfolded ? 12 : (isSmallScreen ? 10 : 9)),
                ),
              ),
              if (isRutin.value) ...[
                _buildCustomRadioButton(0, 'Harian', context),
                SizedBox(
                    width: isUnfolded
                        ? Sizes.s10
                        : (isSmallScreen ? Sizes.s4 : Sizes.s10)),
                _buildCustomRadioButton(1, 'Mingguan', context),
                SizedBox(
                    width: isUnfolded
                        ? Sizes.s10
                        : (isSmallScreen ? Sizes.s4 : Sizes.s10)),
                _buildCustomRadioButton(2, 'Bulanan', context),
                SizedBox(
                    width: isUnfolded
                        ? Sizes.s10
                        : (isSmallScreen ? Sizes.s4 : Sizes.s10)),
                _buildCustomRadioButton(3, 'Tahunan', context),
              ]
            ],
          )),
    );
  }

  Widget _buildRoutineSwitch(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Container(
      height: isUnfolded ? Sizes.s15 : (isSmallScreen ? Sizes.s10 : Sizes.s25),
      width: isUnfolded ? Sizes.s25 : (isSmallScreen ? Sizes.s20 : Sizes.s32),
      margin: EdgeInsets.only(
          right: isUnfolded ? Sizes.s4 : (isSmallScreen ? Sizes.s2 : Sizes.s4)),
      alignment: Alignment.center,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Obx(() => CupertinoSwitch(
              value: isRutin.value,
              onChanged: (val) {
                isRutin.value = val;
              },
              activeTrackColor: AppColors.gradientEndColor,
            )),
      ),
    );
  }

  Widget _buildCustomRadioButton(int value, String title, context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return CustomRadioButton(
      value: value,
      groupValue: rangeGroupvalue.value,
      onChanged: (val) {
        rangeGroupvalue.value = val!;
      },
      title: title,
    );
  }

  Widget _buildDateRangeRow(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Row(
      spacing: Sizes.s8,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Obx(() => Text(
                selectedDateRange.value,
                style: Get.textTheme.labelMedium!
                    .copyWith(fontSize: isUnfolded ? 14 : 12),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )),
        ),
        Flexible(
          child: GestureDetector(
            onTap: () {
              if (isRutin.value) {
                pickDateRange();
              } else {
                seasonalAction(
                  listEvent?.value ?? [],
                  selectedEvent?.value,
                  eventType,
                  (type) {
                    updateEventType?.call(type);
                  },
                  (event) {
                    onSelectedEvent?.call(event);
                  },
                );
              }
            },
            child: _buildDateRangeContainer(context),
          ),
        )
      ],
    );
  }

  Widget _buildDateRangeContainer(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Sizes.s6, vertical: Sizes.s2),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyColor),
        borderRadius: BorderRadius.circular(Sizes.s4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: Obx(() {
              return Text(
                isRutin.value
                    ? "Rentang Waktu"
                    : selectedEvent?.value?.nama ?? '-',
                style: Get.textTheme.labelMedium!.copyWith(
                    color: AppColors.greyColor, fontSize: isUnfolded ? 14 : 12),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              );
            }),
          ),
          SizedBox(width: Sizes.s2),
          Icon(
            IconlyLight.calendar,
            color: AppColors.greyColor,
            size: isUnfolded ? 18 : (isSmallScreen ? Sizes.s14 : Sizes.s18),
          )
        ],
      ),
    );
  }

  Future pickDateRange() async {
    PickDateType pickDateType = PickDateType.week;
    switch (rangeGroupvalue.value) {
      case 0:
        pickDateType = PickDateType.week;
        break;
      case 1:
        pickDateType = PickDateType.month;
        break;
      case 2:
        pickDateType = PickDateType.year;
        break;
      default:
        pickDateType = PickDateType.year;
        break;
    }
    CustomDatePicker.selectDate(
      type: pickDateType,
      onSelectedDate: onSelectedDate,
      initialDates: initialDates?.value,
    );
  }

  String getDropdownVal(String? value) {
    switch (value) {
      case "Semua Event":
        return "Semua Event";
      case "NATAL":
        return "Nataru";
      case "ANGLEB":
        return "Angkutan Lebaran";
      default:
        return "Semua Event";
    }
  }

  void seasonalAction(
    List<Event> listEvent,
    Event? selectedEvent,
    RxString? eventType,
    void Function(String)? selectType,
    void Function(Event) onSelected,
  ) {
    BottomSheetHelpers.showCustomBottomSheet(
      backgroundColor: Color(0xFF0D1320),
      isScrollControlled: false,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s12),
        child: Column(
          children: [
            Text(
              "Daftar Nama Event",
              style: Get.textTheme.labelLarge!.copyWith(
                color: AppColors.lightGreyColor,
              ),
            ),
            CustomDropdown(
              data: ["Semua Event", "Nataru", "Angkutan Lebaran"],
              hint: "Semua Event",
              value: getDropdownVal(eventType?.value),
              onChanged: (value) {
                if (value == "Semua Event") {
                  selectType?.call("Semua Event");
                } else if (value == "Nataru") {
                  selectType?.call("NATAL");
                } else if (value == "Angkutan Lebaran") {
                  selectType?.call("ANGLEB");
                }
              },
              onSaved: (value) {},
              isDarkMode: true,
            ),
            SizedBox(height: Sizes.s12),
            Obx(
              () {
                final type = eventType?.value ?? '';
                final data = (type == "Semua Event" || type.isEmpty)
                    ? listEvent
                    : listEvent.where((e) => e.tipe == type).toList();
                return ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final item = data[index];
                    return InkWell(
                      onTap: () {
                        onSelected.call(item);
                        Get.back();
                      },
                      child: OptionSeasonalItem(
                        isSelected: selectedEvent?.id == item.id,
                        title: item.nama,
                        desc: item.subNama ?? '',
                        date:
                            "${item.tanggalMulai != null ? DateFormat('dd MMM yyy').format(item.tanggalMulai!) : '-'} - ${item.tanggalSelesai != null ? DateFormat('dd MMM yyy').format(item.tanggalSelesai!) : '-'}",
                        color: AppColors.primaryColor,
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: Sizes.s12);
                  },
                  itemCount: data.length,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
