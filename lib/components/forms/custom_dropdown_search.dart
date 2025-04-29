import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class CustomDropdownSearch extends StatelessWidget {
  final List<String> items;
  final String label;
  final String? selectedItem;
  final Function(String?)? onChanged;
  final Function()? onClearSelected;
  final TextStyle? style;
  final double? padding;
  final double? radius;
  final bool? isDarkMode;

  const CustomDropdownSearch({
    super.key,
    required this.items,
    required this.label,
    this.onClearSelected,
    this.selectedItem,
    this.onChanged,
    this.style,
    this.padding,
    this.radius,
    this.isDarkMode = false,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // if (label.isNotEmpty)
        //   Padding(
        //     padding: EdgeInsets.only(bottom: Sizes.s4),
        //     child: Text(
        //       label,
        //       style: Get.textTheme.bodyMedium!.copyWith(
        //         fontWeight: FontWeight.w400,
        //         fontSize: isUnfolded ? FontSizes.s9 : FontSizes.s11,
        //         color: isDarkMode == true
        //             ? AppColors.whiteColor
        //             : AppColors.greyColor,
        //       ),
        //     ),
        //   ),
        DropdownButtonFormField2<String>(
          isExpanded: true,
          value: selectedItem,
          decoration: InputDecoration(
            fillColor: isDarkMode! ? Color(0xFF0D1320) : null,
            contentPadding: EdgeInsets.symmetric(
                vertical: isUnfolded ? Sizes.s6 : (padding ?? Sizes.s9)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? Sizes.s8),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: AppColors.outlineColor,
                width: Sizes.s1,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.s8),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: AppColors.outlineColor,
                width: Sizes.s1,
              ),
            ),
          ),
          hint: Text(
            'Pilih $label',
            style: style ??
                Get.textTheme.labelLarge!.copyWith(
                  color: AppColors.lightGreyColor,
                ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: style ??
                          Get.textTheme.labelLarge!.copyWith(
                            color: isDarkMode! ? Colors.white : null,
                          ),
                    ),
                  ))
              .toList(),
          selectedItemBuilder: (BuildContext context) {
            return items.map<Widget>((value) {
              return Text(
                value,
                style: TextStyle(
                  fontSize: isUnfolded ? Sizes.s11 : Sizes.s14,
                  overflow: TextOverflow.ellipsis,
                  color: isDarkMode! ? Colors.white : Colors.black45,
                ),
              );
            }).toList();
          },
          onChanged: onChanged,
          buttonStyleData: ButtonStyleData(
            padding: EdgeInsets.only(right: Sizes.s8),
          ),
          iconStyleData: IconStyleData(
            icon: Row(
              children: [
                if (onClearSelected != null && selectedItem != null) ...[
                  InkWell(
                    onTap: onClearSelected,
                    child: Icon(
                      Icons.close,
                      color: isDarkMode! ? Colors.white : Colors.black45,
                    ),
                  ),
                  SizedBox(width: Sizes.s8),
                ],
                Icon(
                  IconlyLight.arrow_down_2,
                  color: isDarkMode! ? Colors.white : Colors.black45,
                ),
              ],
            ),
            iconSize: Sizes.s18,
            openMenuIcon: Row(
              children: [
                if (onClearSelected != null && selectedItem != null) ...[
                  InkWell(
                    onTap: onClearSelected,
                    child: Icon(
                      Icons.close,
                      color: isDarkMode! ? Colors.white : Colors.black45,
                    ),
                  ),
                  SizedBox(width: Sizes.s8),
                ],
                Icon(
                  IconlyLight.arrow_up_2,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
          ),
          dropdownStyleData: DropdownStyleData(
            elevation: 2,
            decoration: BoxDecoration(
              color: isDarkMode!
                  ? Color.fromARGB(255, 129, 136, 150)
                  : AppColors.whiteColor,
              borderRadius: BorderRadius.circular(Sizes.s6),
              border: Border.all(color: AppColors.lightGreyColor),
            ),
          ),
          menuItemStyleData: MenuItemStyleData(
            padding: EdgeInsets.symmetric(horizontal: Sizes.s16),
          ),
          dropdownSearchData: DropdownSearchData(
            searchController: TextEditingController(),
            searchInnerWidgetHeight: 50,
            searchInnerWidget: Container(
              height: 50,
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 4,
                right: 8,
                left: 8,
              ),
              child: TextFormField(
                expands: true,
                maxLines: null,
                controller: TextEditingController(),
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  hintText: 'Cari $label...',
                  hintStyle: const TextStyle(fontSize: 12, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppColors.lightGreyColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppColors.lightGreyColor),
                  ),
                ),
              ),
            ),
            searchMatchFn: (item, searchValue) {
              return (item.value
                  .toString()
                  .toLowerCase()
                  .contains(searchValue.toLowerCase()));
            },
          ),
        ),
      ],
    );
  }
}
