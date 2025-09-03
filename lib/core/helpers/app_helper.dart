import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

bool isEnglish() {
  if (Intl.getCurrentLocale() == 'en') {
    return true;
  } else {
    return false;
  }
}

String shortCurrencyFormat(
  String currencyCode,
  String symbol,
  String? locale,
  num amount,
) {
  final shortFormat = NumberFormat.currency(
    locale: locale,
    name: currencyCode,
  ).format(amount);
  return shortFormat;
}

String explicitCurrencyFormat(
  String currencyCode,
  String symbol,
  String? locale,
  num amount,
) {
  final shortFormat = NumberFormat.currency(
    locale: locale,
    name: currencyCode,
    symbol: symbol,
  ).format(amount);

  return "$shortFormat $currencyCode";
}

String defaultCurrencyFormat(
  String currencyCode,
  String symbol,
  String locale,
  double amount,
) {
  final format = NumberFormat.currency(
    name: currencyCode,
    symbol: symbol,
    locale: locale,
  );
  return format.format(amount);
}

class SafeList<T> extends ListBase<T> {
  SafeList({
    required this.defaultValue,
    required this.fallbackValue,
    List<T>? values,
  }) : _list = values ?? [];
  final List<T> _list;
  final T defaultValue;
  final T fallbackValue;

  @override
  T operator [](int index) =>
      index >= 0 && index < _list.length ? _list[index] : fallbackValue;

  @override
  void operator []=(int index, T value) => _list[index] = value;

  @override
  int get length => _list.length;

  @override
  T get first => _list.isNotEmpty ? _list.first! : fallbackValue;

  @override
  T get last => _list.isNotEmpty ? _list.last! : fallbackValue;

  @override
  set length(int value) {
    if (value < _list.length) {
      _list.length = value;
    } else {
      _list.addAll(List.filled(value - _list.length, defaultValue));
    }
  }

  @override
  void add(T element) => _list.add(element);

  @override
  void insert(int index, T element) => index >= 0 && index <= _list.length
      ? _list.insert(index, element)
      : fallbackValue;

  @override
  T removeAt(int index) => index >= 0 && index < _list.length
      ? _list.removeAt(index)
      : fallbackValue;

  @override
  void clear() => _list.clear();

  @override
  String toString() => _list.toString();

  /// Returns the element at the specified index or null if the index is out of range.
  T? safeGet(int index) =>
      index >= 0 && index < _list.length ? _list[index] : null;

  /// Replaces the element at the specified index with the new element.
  void safeSet(int index, T element) => index >= 0 && index < _list.length
      ? _list[index] = element
      : fallbackValue;

  bool listContains(T value) => _list.contains(value);
}

String getCurrentMethodName() {
  final frames = StackTrace.current.toString().split('\n');
  final frame = frames.elementAtOrNull(1);

  // Example frame:
  // #1  LoggerAnalyticsClient.trackAppOpen (package:logger/logger.dart:4)
  if (frame != null) {
    final tokens = frame.split(' ');
    final methodName = tokens.elementAtOrNull(tokens.length - 2);
    if (methodName != null) {
      final methodTokens = methodName.split('.');
      return methodTokens.lastOrNull ?? "";
    }
  }
  return '';
}

String getOrderStatusText(BuildContext context, String status) {
  switch (status) {
    case 'pending':
      return isEnglish() ? 'Pending' : 'قيد الانتظار';
    case 'representative_on_the_way':
      return isEnglish() ? 'Representative on the way' : 'المندوب في الطريق';
    case 'order_in_way':
      return isEnglish() ? 'Order in way' : 'الطلب في الطريق';
    case 'washing_started':
      return isEnglish() ? 'Washing started' : 'بدأ الغسيل';
    case 'deliveried':
      return isEnglish() ? 'Delivered' : 'تم التوصيل';
    case 'cancelled':
      return isEnglish() ? 'Cancelled' : 'ملغي';
    default:
      return isEnglish() ? 'Unknown' : 'غير معروف';
  }
}
