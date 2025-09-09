import 'package:flutter/material.dart';
import 'package:taskora/generated/l10n.dart';

extension LocalizationExtension on BuildContext {
  S get tr => S.of(this);
}

extension LocalizationHelper on S {
  String byKey(String key) {
    switch (key) {
      case 'list':
        return list;
      case 'network':
        return network;
      case 'all':
        return all;
      case 'electrical_devices':
        return electrical_devices;
      case 'household_tools':
        return household_tools;
      case 'furniture_equipment':
        return furniture_equipment;
      case 'cars':
        return cars;
      default:
        return key; // fallback
    }
  }
}
