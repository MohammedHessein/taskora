import 'package:taskora/core/constants/ui_constants.dart';

extension NonNullNum on num? {
  num isNullOrEmpty() {
    if (this == null) {
      return UiConstants.unknownNumValue;
    } else {
      return this!;
    }
  }
}

extension NumExtensions on num {
  // Example: Round a double to a specific number of decimal places
  double roundToDecimalPlaces(int decimalPlaces) {
    final mod = 10.0 * decimalPlaces;
    return (this * mod).round().toDouble() / mod;
  }

  num plus(num other) {
    return this + other;
  }

  num minus(num other) {
    return this - other;
  }

  num times(num other) {
    return this * other;
  }

  num div(num other) {
    return this / other;
  }
}
