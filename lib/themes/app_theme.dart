// ignore_for_file: prefer_const_constructors, deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.whiteColor,
      disabledColor: AppColors.disabledColor,
      colorScheme: ColorScheme.light(
        background: AppColors.whiteColor,
        primary: AppColors.primaryColor,
        surface: AppColors.blackColor,
        onSurface: AppColors.whiteColor,
        secondary: AppColors.navyColor,
        tertiary: AppColors.redColor,
        outline: AppColors.outlineColor,
        surfaceTint: AppColors.disabledColor,
        error: AppColors.dangerColor,
        shadow: AppColors.disabledColor,
        inverseSurface: AppColors.greyColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.red,
        foregroundColor: AppColors.whiteColor,
        centerTitle: true,
        elevation: 0,
        titleSpacing: Sizes.s1,
        titleTextStyle: GoogleFonts.inter(
          fontSize: FontSizes.s16,
          fontWeight: FontWeight.w600,
        ),
      ),
      bottomSheetTheme:
          BottomSheetThemeData(backgroundColor: Colors.transparent),
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        filled: true,
        fillColor: AppColors.whiteColor,
        contentPadding:
            EdgeInsets.symmetric(horizontal: Sizes.s14, vertical: Sizes.s10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.s5),
          borderSide: BorderSide(color: AppColors.outlineColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.s5),
          borderSide: BorderSide(
            color: AppColors.dangerColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.s5),
          borderSide: BorderSide(
            color: AppColors.dangerColor,
          ),
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.inter(
          fontSize: FontSizes.s32,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: GoogleFonts.inter(
          fontSize: FontSizes.s24,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: GoogleFonts.inter(
          fontSize: FontSizes.s20,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: FontSizes.s18,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: GoogleFonts.inter(
          fontSize: FontSizes.s16,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: FontSizes.s14,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: GoogleFonts.inter(
          fontSize: FontSizes.s12,
          fontWeight: FontWeight.w400,
          color: AppColors.blackColor,
        ),
        labelLarge: GoogleFonts.inter(
          fontSize: FontSizes.s13,
          fontWeight: FontWeight.w500,
          color: AppColors.blackColor,
        ),
        labelMedium: GoogleFonts.inter(
          fontSize: FontSizes.s11,
          fontWeight: FontWeight.w500,
          color: AppColors.blackColor,
        ),
        titleSmall: GoogleFonts.inter(
          fontSize: FontSizes.s12,
          fontWeight: FontWeight.w500,
          color: AppColors.blackColor,
        ),
      ).apply(
        bodyColor: AppColors.blackColor,
        displayColor: AppColors.blackColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: FontSizes.s12,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: FontSizes.s12,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding:
              EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s12),
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          foregroundColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.s5),
          ),
          textStyle: GoogleFonts.inter(
            fontSize: FontSizes.s16,
            fontWeight: FontWeight.w600,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.whiteColor,
          padding:
              EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.s5),
          ),
          side: BorderSide(color: AppColors.outlineColor),
          textStyle: GoogleFonts.inter(
            fontSize: FontSizes.s16,
            fontWeight: FontWeight.w600,
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
