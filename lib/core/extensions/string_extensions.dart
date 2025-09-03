import 'package:flutter/material.dart';
import 'package:taskora/core/constants/regexp.dart';
import 'package:taskora/core/constants/ui_constants.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

extension NonNullString on String? {
  /// Check if a string is empty.
  /// Return true if it is not empty.
  String isNullOrEmpty() {
    return this == null || this!.isEmpty
        ? UiConstants.unknownStringValue
        : this!;
  }
}

extension StringExtensions on String {
  /// Check if a string is a valid email.
  /// Return true if it is valid.
  bool isValidEmail() {
    return Regexp.emailRegExp.hasMatch(this);
  }

  /// Check if a string is a valid password.
  /// Return true if it is valid.
  bool isValidPass() {
    return Regexp.passRegExp.hasMatch(this);
  }

  /// Check if a string is a valid phone.
  /// Return true if it is valid.
  bool isValidPhone() {
    return Regexp.phoneRegExp.hasMatch(this);
  }

  /// Check if a string is a valid url.
  /// Return true if it is valid.
  bool isValidUrl() {
    // final uri = Uri.tryParse(this);
    // return uri != null && uri.hasAbsolutePath;
    return Regexp.urlRegExp.hasMatch(this);
  }

  String get hardcoded => this;
}

extension TextStyleExtensions on String? {
  Text kF4({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF4.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF5({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF5.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF6({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF6.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF7({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF7.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF8({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF8.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF9({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF9.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF10({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF10.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF11({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF11.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF12({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF12.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF13({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF13.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF14({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF14.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF16({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF16.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF18({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF18.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF20({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF20.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF22({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF22.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF24({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF24.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF26({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF26.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF28({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF28.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF30({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF30.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF32({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF32.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF34({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF34.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );

  Text kF36({FontWeight? fontWeight, Color? color, double? fontSize}) => Text(
    this ?? "",
    style: CustomTextStyle.kTextStyleF36.copyWith(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    ),
  );
}
