import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class CustomDropdown extends StatelessWidget {
  final List data;
  final String hint;
  final Function(String?)? onChanged;
  final Function(String?)? onSaved;
  final Function()? onClearSelected;
  final TextStyle? style;
  final double? padding;
  final double? radius;
  final bool? isDarkMode;
  final String? label;
  final String? value;

  const CustomDropdown({
    super.key,
    required this.data,
    this.onChanged,
    this.onSaved,
    this.onClearSelected,
    required this.hint,
    this.style,
    this.padding,
    this.radius,
    this.isDarkMode = false,
    this.label,
    this.value,
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
        if (label != null)
          Padding(
            padding: EdgeInsets.only(bottom: Sizes.s4),
            child: Text(
              label ?? '',
              style: Get.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: isUnfolded ? 13 : isSmallScreen ? 10 : 11,
                  color: isDarkMode == true
                      ? AppColors.whiteColor
                      : AppColors.greyColor),
            ),
          ),
        DropdownButtonFormField2<String>(
          isExpanded: true,
          value: value,
          decoration: InputDecoration(
            fillColor: isDarkMode! ? Color(0xFF0D1320) : null,
            contentPadding: EdgeInsets.symmetric(
                vertical: isUnfolded ? Sizes.s6 : (padding ?? Sizes.s9)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius ?? Sizes.s8),
                borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: AppColors.outlineColor,
                    width: Sizes.s1)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.s8),
                borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: AppColors.outlineColor,
                    width: Sizes.s1)),
          ),
          hint: Text(
            hint,
            style: style ??
                Get.textTheme.labelLarge!
                    .copyWith(color: AppColors.lightGreyColor, fontSize: isUnfolded ? 12 : isSmallScreen ? 10 : 11),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          items: data
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: style ??
                          Get.textTheme.labelLarge!.copyWith(
                            color: isDarkMode! ? Colors.white : null,
                            fontSize: isUnfolded ? 14 : isSmallScreen ? 10 : 12,
                          ),
                    ),
                  ))
              .toList(),
          validator: (value) {
            if (value == null) {
              return 'Pilih $hint';
            }
            return null;
          },
          selectedItemBuilder: (BuildContext context) {
            return data.map<Widget>((value) {
              return Text(
                value,
                style: TextStyle(
                  fontSize: isUnfolded ? 14 : isSmallScreen ? 10 : 12,
                  overflow: TextOverflow.ellipsis,
                  color: isDarkMode! ? Colors.white : Colors.black45,
                ),
              );
            }).toList();
          },
          onChanged: onChanged,
          onSaved: onSaved,
          buttonStyleData: ButtonStyleData(
            padding: EdgeInsets.only(right: Sizes.s8),
          ),
          iconStyleData: IconStyleData(
            icon: Row(
              children: [
                if (onClearSelected != null && value != null) ...[
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
                if (onClearSelected != null && value != null) ...[
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
                border: Border.all(color: AppColors.lightGreyColor)),
          ),
          menuItemStyleData: MenuItemStyleData(
            padding: EdgeInsets.symmetric(horizontal: Sizes.s16),
          ),
        ),
      ],
    );
  }
}
