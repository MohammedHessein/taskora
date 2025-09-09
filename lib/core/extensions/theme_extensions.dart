import 'package:flutter/material.dart';

import 'package:taskora/core/extensions/custom_colors_extension.dart';

extension ThemeContextExtensions on BuildContext {
  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }

  CustomColors get customColors {
    return Theme.of(this).customColors;
  }
}
