import 'package:android_id/android_id.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:universal_platform/universal_platform.dart';

class DeviceUtils {
  const DeviceUtils._();
  static DeviceType deviceType = _getDeviceType();

  static Future<String> getDeviceId() async {
    if (UniversalPlatform.isIOS) {
      return FlutterUdid.udid; // unique ID on iOS
    } else {
      const androidIdPlugin = AndroidId();

      final androidID = await androidIdPlugin.getId();

      return androidID ?? ''; // unique ID on Android
    }
  }

  static Future<String> getDeviceModelName() async {
    final deviceInfo = DeviceInfoPlugin();
    if (UniversalPlatform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;

      return iosInfo.name;
    } else {
      final androidInfo = await deviceInfo.androidInfo;

      return '${androidInfo.brand} ${androidInfo.device}';
    }
  }

  static DeviceType _getDeviceType() {
    return MediaQueryData.fromView(
              WidgetsBinding.instance.platformDispatcher.views.first,
            ).size.shortestSide <
            Dimensions.phoneMaxWidth
        ? DeviceType.mobile
        : DeviceType.tablet;
  }
}
