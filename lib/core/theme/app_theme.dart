import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/constants/ui_constants.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';

sealed class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.secondaryWhite,
      titleTextStyle: CustomTextStyle.kTextStyleF14.copyWith(
        color: AppColors.secondaryBlack,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.secondaryWhite,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedItemColor: AppColors.primaryBlue,
      unselectedItemColor: AppColors.secondaryBlack.shade300,
    ),
    brightness: Brightness.light,
    fontFamily: UiConstants.mainFontFamily,
    scaffoldBackgroundColor: AppColors.secondaryWhite,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryBlue),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.p12.w,
          vertical: Dimensions.p12.h,
        ),
        minimumSize: Size(double.infinity, 56.h),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: AppColors.primaryBlue),
          borderRadius: BorderRadius.circular(Dimensions.r10),
        ),
        backgroundColor: AppColors.primaryBlue,
        foregroundColor: AppColors.secondaryWhite,
        textStyle: CustomTextStyle.kBtnTextStyle,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      labelStyle: CustomTextStyle.kFormFieldTextStyle,
      hintStyle: CustomTextStyle.kFormFieldTextStyle,
      errorStyle: CustomTextStyle.kTextStyleF12.copyWith(
        color: AppColors.error,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimensions.r10),
        borderSide: BorderSide(color: AppColors.secondaryBlack.shade300),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimensions.r10),
        borderSide: BorderSide(color: AppColors.secondaryBlack.shade300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimensions.r10),
        borderSide: const BorderSide(color: AppColors.primaryBlue),
      ),
      fillColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.secondaryWhite;
        }
        return AppColors.secondaryWhite;
      }),
      filled: true,
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.secondaryWhite,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.r10),
          borderSide: BorderSide(color: AppColors.secondaryBlack.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.r10),
          borderSide: BorderSide(color: AppColors.secondaryBlack.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.r10),
          borderSide: const BorderSide(color: AppColors.primaryBlue),
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      overlayColor: WidgetStateColor.resolveWith(
        (states) => Colors.transparent,
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
      side: BorderSide(color: AppColors.secondaryBlack.shade300),
      checkColor: WidgetStateProperty.all(AppColors.secondaryWhite),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          CustomTextStyle.kTextStyleF16.copyWith(
            color: AppColors.grey.shade300,
            fontWeight: FontWeight.w400,
          ),
        ),
        elevation: const WidgetStatePropertyAll(0),
        foregroundColor: WidgetStatePropertyAll(AppColors.grey.shade300),
      ),
    ),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: CustomTextStyle.kFormFieldTextStyle,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondaryBlack.shade300),
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      backgroundColor: AppColors.secondaryWhite,
      elevation: 0,
    ),
    timePickerTheme: TimePickerThemeData(
      backgroundColor: AppColors.secondaryWhite,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      hourMinuteTextStyle: CustomTextStyle.kTextStyleF24.copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.secondaryBlack,
      ),
      dialTextStyle: CustomTextStyle.kTextStyleF16.copyWith(
        color: AppColors.secondaryBlack,
      ),
      dayPeriodTextStyle: CustomTextStyle.kTextStyleF14.copyWith(
        fontWeight: FontWeight.w500,
        color: AppColors.secondaryBlack,
      ),
      helpTextStyle: CustomTextStyle.kTextStyleF16.copyWith(
        color: AppColors.primaryBlue,
        fontWeight: FontWeight.w500,
      ),
      hourMinuteShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      dayPeriodShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: BorderSide(
          color: AppColors.secondaryBlack.shade300,
          width: 1.w,
        ),
      ),
      dialHandColor: AppColors.primaryBlue,
      dialBackgroundColor: AppColors.secondaryBlack.shade50,
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primaryBlue;
        }
        return AppColors.secondaryBlack.shade100;
      }),
      hourMinuteTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.secondaryWhite;
        }
        return AppColors.secondaryBlack;
      }),
      dayPeriodColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primaryBlue;
        }
        return AppColors.secondaryWhite;
      }),
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.secondaryWhite;
        }
        return AppColors.secondaryBlack;
      }),
      entryModeIconColor: AppColors.primaryBlue,
      dayPeriodBorderSide: BorderSide(
        color: AppColors.secondaryBlack.shade300,
        width: 1.w,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryBlue,
      foregroundColor: AppColors.secondaryWhite,
    ),
  );

  /*  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: FontFamily.roboto,
    scaffoldBackgroundColor: AppColors.dSurfaceColor,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppColors.primaryBlue.shade900,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.p10.w,
          vertical: Dimensions.p10.h,
        ),
        minimumSize: Size(
          double.infinity,
          0.07.sh,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: AppColors.secondaryOrange,
          ),
          borderRadius: BorderRadius.circular(
            Dimensions.r12,
          ),
        ),
        backgroundColor: AppColors.secondaryOrange,
        foregroundColor: AppColors.lSurfaceContainerLowest,
        textStyle: CustomTextStyle.kBtnTextStyle,
        // alignment: Alignment.center,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      labelStyle: CustomTextStyle.kFormFieldTextStyle,
      hintStyle: CustomTextStyle.kFormFieldTextStyle,
      errorStyle: CustomTextStyle.kTextStyleF12.copyWith(
        color: AppColors.errorColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          Dimensions.r20,
        ),
        borderSide: const BorderSide(
          color: AppColors.dOutline,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          Dimensions.r20,
        ),
        borderSide: const BorderSide(
          color: AppColors.dOutline,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          Dimensions.r20,
        ),
        borderSide: const BorderSide(
          color: AppColors.dOutline,
        ),
      ),
      fillColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.primaryBlue.shade700;
        }
        return AppColors.dSurfaceContainerLowest;
      }),
      filled: true,
    ),
  );*/
}
