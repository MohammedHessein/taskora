import 'package:flutter/material.dart';
import 'package:taskora/core/theme/app_colors.dart';

class CustomColors {
  factory CustomColors._light() {
    return const CustomColors._(
      primaryBlue: AppColors.primary,
      secondaryWhite: AppColors.secondaryWhite,
      secondaryBlack: AppColors.secondaryBlack,
      accentColor: AppColors.secondary,
      errorColor: AppColors.error,
    );
  }

  factory CustomColors._dark() {
    return const CustomColors._(
      primaryBlue: AppColors.primary,
      secondaryWhite: AppColors.secondaryWhite,
      secondaryBlack: AppColors.secondaryBlack,
      accentColor: AppColors.secondary,
      errorColor: AppColors.error,
    );
  }

  const CustomColors._({
    required this.primaryBlue,
    required this.secondaryWhite,
    required this.secondaryBlack,
    required this.accentColor,
    required this.errorColor,
  });

  final MaterialColor primaryBlue;
  final Color secondaryWhite;
  final MaterialColor secondaryBlack;
  final MaterialColor accentColor;
  final MaterialColor errorColor;
}

extension CustomColorsExtension on ThemeData {
  CustomColors get customColors {
    if (brightness == Brightness.dark) return CustomColors._dark();
    return CustomColors._light();
  }
}
