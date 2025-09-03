import 'package:flutter/material.dart';
import 'package:taskora/core/constants/ui_constants.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/utils/dimensions.dart';

class CustomTextStyle {
  CustomTextStyle._();

  static final regular = TextStyle(
    fontWeight: Dimensions.w400Regular,
    fontFamily: UiConstants.mainFontFamily,
    color: AppColors.secondaryBlack,
  );

  static TextStyle kTextStyleF4 = TextStyle(
    fontSize: Dimensions.f4,
  ).merge(regular);

  static TextStyle kTextStyleF5 = TextStyle(
    fontSize: Dimensions.f5,
  ).merge(regular);

  static TextStyle kTextStyleF6 = TextStyle(
    fontSize: Dimensions.f6,
  ).merge(regular);

  static TextStyle kTextStyleF7 = TextStyle(
    fontSize: Dimensions.f7,
  ).merge(regular);

  static TextStyle kTextStyleF8 = TextStyle(
    fontSize: Dimensions.f8,
  ).merge(regular);

  static TextStyle kTextStyleF9 = TextStyle(
    fontSize: Dimensions.f9,
  ).merge(regular);

  static TextStyle kTextStyleF10 = TextStyle(
    fontSize: Dimensions.f10,
  ).merge(regular);

  static TextStyle kTextStyleF11 = TextStyle(
    fontSize: Dimensions.f11,
  ).merge(regular);

  static TextStyle kTextStyleF12 = TextStyle(
    fontSize: Dimensions.f12,
  ).merge(regular);

  static TextStyle kTextStyleF13 = TextStyle(
    fontSize: Dimensions.f13,
  ).merge(regular);

  static TextStyle kTextStyleF14 = TextStyle(
    fontSize: Dimensions.f14,
  ).merge(regular);

  static TextStyle kTextStyleF16 = TextStyle(
    fontSize: Dimensions.f16,
  ).merge(regular);

  static TextStyle kTextStyleF17 = TextStyle(
    fontSize: Dimensions.f17,
  ).merge(regular);

  static TextStyle kTextStyleF18 = TextStyle(
    fontSize: Dimensions.f18,
  ).merge(regular);

  static TextStyle kTextStyleF20 = TextStyle(
    fontSize: Dimensions.f20,
  ).merge(regular);
  TextStyle get f20 => CustomTextStyle.kTextStyleF20;

  static TextStyle kTextStyleF22 = TextStyle(
    fontSize: Dimensions.f22,
  ).merge(regular);

  static TextStyle kTextStyleF24 = TextStyle(
    fontSize: Dimensions.f24,
  ).merge(regular);

  static TextStyle kTextStyleF26 = TextStyle(
    fontSize: Dimensions.f26,
  ).merge(regular);

  static TextStyle kTextStyleF28 = TextStyle(
    fontSize: Dimensions.f28,
  ).merge(regular);

  static TextStyle kTextStyleF30 = TextStyle(
    fontSize: Dimensions.f30,
  ).merge(regular);

  static TextStyle kTextStyleF32 = TextStyle(
    fontSize: Dimensions.f32,
  ).merge(regular);

  static TextStyle kTextStyleF34 = TextStyle(
    fontSize: Dimensions.f34,
  ).merge(regular);

  static TextStyle kTextStyleF36 = TextStyle(
    fontSize: Dimensions.f36,
  ).merge(regular);

  static TextStyle kFormFieldTextStyle = TextStyle(
    fontFamily: UiConstants.mainFontFamily,
    fontSize: Dimensions.f12,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryBlack.shade300,
    height: 22 / 12,
  );

  static TextStyle kBtnTextStyle = TextStyle(
    fontFamily: UiConstants.mainFontFamily,
    fontSize: Dimensions.f14,
    fontWeight: FontWeight.w500,
    color: AppColors.secondaryWhite,
    height: 20 / 14,
  );
  static TextStyle kPinTextStyle = TextStyle(
    fontSize: Dimensions.f12,
    fontFamily: UiConstants.mainFontFamily,
    color: AppColors.secondaryBlack,
  );
}
