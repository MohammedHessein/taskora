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
        // alignment: Alignment.center,
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
