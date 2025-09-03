import 'package:flutter/material.dart';
import 'package:taskora/core/constants/lang_constants.dart';

enum LanguageType { ENGLISH, ARABIC }

const Locale ARABIC_LOCAL = Locale("ar");
const Locale ENGLISH_LOCAL = Locale("en");

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.ENGLISH:
        return LangConstants.english;
      case LanguageType.ARABIC:
        return LangConstants.arabic;
    }
  }
}
