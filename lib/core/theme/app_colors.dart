import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// Primary Colors - الألوان الأساسية من تصميم Figma
  static const Map<int, Color> _primarySwatch = {
    100: Color(0xFFE6F5F8), // من Figma
    500: Color(0xFF0096B4), // Eastern Blue الأساسي
    600: Color(0xFF0097B2), // Eastern Blue/600 من Figma
    700: Color(0xFF0089A4), // تدرج أغمق
    800: Color(0xFF005362), // تدرج أغمق
    900: Color(0xFF19223A),
  };

  /// Color: #0096B4 Eastern Blue Primary
  static const MaterialColor primary = MaterialColor(
    0xFF0096B4,
    _primarySwatch,
  );

  /// Secondary Colors - Orange من Figma
  static const Map<int, Color> _secondarySwatch = {
    50: Color(0xFFFFF3E0),
    100: Color(0xFFFFE0B2),
    400: Color(0xFFFFC547), // من Figma
    500: Color(0xFFF2994A), // Accent Orange
    600: Color(0xFFFFAD08), // Pending من Figma
    900: Color(0xFFE65100),
  };

  /// Color: #F2994A Accent Orange
  static const MaterialColor secondary = MaterialColor(
    0xFFF2994A,
    _secondarySwatch,
  );
  static const secondaryWhite = Colors.white;
  static const MaterialColor secondaryBlack = MaterialColor(
    0xFF000000,
    _secondaryBlackSwatch,
  );
  static const Map<int, Color> _secondaryBlackSwatch = {
    /* Color: #F6F6F6 */
    50: Color(0xFFF6F6F6),
    /* Color: #E7E7E7 */
    100: Color(0xFFE7E7E7),
    /* Color: #D1D1D1 */
    200: Color(0xFFD1D1D1),
    /* Color: #B0B0B0 */
    300: Color(0xFFB0B0B0),
    /* Color: #888888 */
    400: Color(0xFF888888),
    /* Color: #6D6D6D */
    500: Color(0xFF6D6D6D),
    /* Color: #5D5D5D */
    600: Color(0xFF5D5D5D),
    /* Color: #BDC2D2 */
    700: Color(0xFFBDC2D2),
    /* Color: #EAEBF0 */
    800: Color(0xFFEAEBF0),
    /* Color: #000000 => Secondary Color */
    950: Color(0xFF000000),
  };

  /// Success Colors - Green من Figma
  static const Map<int, Color> _successSwatch = {
    100: Color(0xFFC8E6C9),
    400: Color(0xFF3DAA4B), // من Figma
    500: Color(0xFF34C759), // Green من Figma
    600: Color(0xFF31A14D), // من Figma
    700: Color(0xFF0A872D), // من Figma
    900: Color(0xFF1B5E20),
  };

  /// Color: #34C759 Success Green
  static const MaterialColor success = MaterialColor(
    0xFF34C759,
    _successSwatch,
  );

  /// Error Colors
  static const Map<int, Color> _errorSwatch = {
    100: Color(0xFFFFCDD2),
    500: Color(0xFFD21919), // Error Red من Figma
    900: Color(0xFFC62828),
  };

  /// Color: #D21919 Error Red
  static const MaterialColor error = MaterialColor(0xFFD21919, _errorSwatch);

  /// Grey/Black Colors - ألوان رمادية وسوداء من Figma
  static const Map<int, Color> _greySwatch = {
    50: Color(0xFFF8F9FA), // Background Light
    100: Color(0xFFE6E6E6), // White/50 من Figma
    200: Color(0xFFD1D1D1), // Black/200 من Figma
    300: Color(0xFFB0B0B0), // من Figma
    400: Color(0xFF8A8A8A), // من Figma
    500: Color(0xFF6D6D6D),
    600: Color(0xFF545454), // من Figma
    700: Color(0xFF333333), // من Figma
    800: Color(0xFF000000), // مع شفافيات مختلفة
    900: Color(0xFF000000),
  };

  /// Color: #6D6D6D shade500
  static const MaterialColor grey = MaterialColor(0xFF6D6D6D, _greySwatch);

  static const Color primaryBlue = Color(0xFF0096B4); // Eastern Blue
  static const Color easternBlue600 = Color(0xFF0097B2); // Eastern Blue/600
  static const Color easternBlue100 = Color(0xFFCDFEFF); // Eastern Blue/100

  /// Secondary Colors
  static const Color accentOrange = Color(0xFFF2994A);
  static const Color pendingOrange = Color(0xFFFFAD08);
  static const Color goldYellow = Color(0xFFFFD700);
  static const Color brightYellow = Color(0xFFFFC547);
  static const Color goldenYellow = Color(0xFFDBBA47);

  /// Success/Green Colors
  static const Color successGreen = Color(0xFF34C759);
  static const Color darkGreen = Color(0xFF0A872D);
  static const Color mediumGreen = Color(0xFF31A14D);
  static const Color lightGreen = Color(0xFF3DAA4B);

  /// Error Colors
  static const Color errorRed = Color(0xFFD21919);

  /// Neutral Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color white50 = Color(0xFFE6E6E6); // White/50
  static const Color lightGrey = Color(0xFFD1D1D1); // Black/200
  static const Color mediumGrey = Color(0xFFB0B0B0);
  static const Color darkGrey = Color(0xFF8A8A8A);
  static const Color charcoal = Color(0xFF545454);
  static const Color darkCharcoal = Color(0xFF333333);
  static const Color black = Color(0xFF000000);

  /// Purple Colors
  static const Color deepPurple = Color(0xFF170C2E);

  /// Background Colors
  static const Color backgroundLight = Color(0xFFF8F9FA);
  static const Color easternBlueBackground = Color(0xFFE6F5F8);

  /// Text Colors with Alpha Values من Figma
  static const Color textBlack = Color(0xFF000000);
  static const Color textBlack70 = Color(0xB3000000); // 70% opacity
  static const Color textBlack20 = Color(0x33000000); // 20% opacity
  static const Color textBlack15 = Color(0x26000000); // 15% opacity
  static const Color textBlack10 = Color(0x1A000000); // 10% opacity
  static const Color textBlack7 = Color(0x12000000); // 7% opacity
  static const Color textBlack6 = Color(0x0F000000); // 6% opacity
  static const Color textBlack5 = Color(0x0D000000); // 5% opacity
  static const Color textBlack3 = Color(0x08000000); // 3% opacity
  static const Color white50Alpha = Color(0x80FFFFFF); // 50% opacity

  /// Special Colors with Alpha من Figma
  static const Color primaryBlue10 = Color(
    0x1A0097B2,
  ); // Eastern Blue 10% opacity
  static const Color deepPurple43 = Color(0x6E170C2E); // Purple 43% opacity

  /// On Colors - ألوان للنصوص على الخلفيات
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color onSuccess = Color(0xFFFFFFFF);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color onBackground = Color(0xFF000000);
  static const Color onSurface = Color(0xFF000000);

  /// Container Colors - ألوان للحاويات
  static const Color errorContainer = Color(0xFFFFDAD6);
  static const Color successContainer = Color(0xFFC8E6C9);
  static const Color warningContainer = Color(0xFFFFECB3);

  /// Border Colors - ألوان للحدود
  static const Color borderColor = Color(0xFFE0E0E0);
  static const Color borderDark = Color(0xFFBDC2D2);

  /// Shadow Colors - ألوان للظلال
  static const Color shadowColor = Color(0x1A000000);
  static const Color shadowDark = Color(0x33000000);

  /// Gradient Colors - ألوان للتدرجات
  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF0096B4), Color(0xFF0097B2)],
  );

  static const Gradient secondaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFF2994A), Color(0xFFFFAD08)],
  );

  static const Gradient successGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF34C759), Color(0xFF31A14D)],
  );
}
