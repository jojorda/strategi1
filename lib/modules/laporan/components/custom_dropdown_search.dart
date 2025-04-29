import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class CustomDropdownSearch extends StatelessWidget {
  final String label;
  final String? selectedItem;
  final List<String> items;
  final Function(String?) onChanged;

  const CustomDropdownSearch({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
    this.selectedItem,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
    return DropdownSearch<String>(
        selectedItem: selectedItem,
        popupProps: PopupProps.menu(
          showSearchBox: true,
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(color: Colors.grey),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            style: TextStyle(color: Colors.black, fontSize: isSmallScreen? 11:14,), // Warna teks search
          ),
          itemBuilder: (context, item, isSelected) => ListTile(
            title: Text(
              item,
              style: TextStyle(
                color: Colors.black, // Warna teks opsi
                fontSize: isSmallScreen? 12:14,
              ),
            ),
          ),
        ),
        items: items,
        onChanged: onChanged,
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: Colors.black, fontSize: isSmallScreen? 11:14,),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        // style: TextStyle(color: Colors.black), // Warna teks yang dipilih
        dropdownBuilder: (context, selectedItem) => Text(
              selectedItem ?? '',
              style: TextStyle(color: Colors.black, fontSize: isSmallScreen? 11:14,), // Warna teks dropdown
            ));
  }
}
