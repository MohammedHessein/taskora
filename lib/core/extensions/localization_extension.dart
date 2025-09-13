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
      case 'grid':
        return grid;
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

String translateServiceKey(BuildContext context, String key) {
  final s = S.of(context);
  switch (key) {
    case "tabs.electricity.main":
      return s.tabsElectricityMain;
    case "tabs.electricity.installation":
      return s.tabsElectricityInstallation;
    case "tabs.electricity.other":
      return s.tabsElectricityOther;

    case "tabs.plumbing.installation":
      return s.tabsPlumbingInstallation;
    case "tabs.plumbing.ChangeImpactEstablishment":
      return s.tabsPlumpingChangeImpactEstablishment;
    case "tabs.plumbing.other":
      return s.tabsPlumbingOther;

    case "tabs.ac.split":
      return s.tabsAcSplit;
    case "tabs.ac.window":
      return s.tabsAcWindow;
    case "tabs.ac.central":
      return s.tabsAcCentral;
    case "tabs.ac.other":
      return s.tabsAcOther;

    case "tabs.satellite.programming":
      return s.tabsSatelliteProgramming;
    case "tabs.satellite.installation":
      return s.tabsSatelliteInstallation;
    case "tabs.satellite.other":
      return s.tabsSatelliteOther;

    case "tabs.carsWashing.main":
      return s.tabsCarsWashingMain;
    case "tabs.carsWashing.other":
      return s.tabsCarsWashingOther;
    default:
      return key;
  }
}
