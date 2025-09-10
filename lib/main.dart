import 'dart:async';
import 'dart:ui';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/config/app_config.dart';
import 'package:taskora/core/config/app_initializer.dart';
import 'package:taskora/core/exceptions/exception_observer.dart';
import 'package:taskora/core/utils/device_utils.dart';
import 'package:taskora/core/utils/logger.dart';
import 'package:taskora/material_app.dart';

void main() => runZonedGuarded(_runMyApp, _reportError);

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer(AppConfig.getInstance()).init();
  final deviceId = await DeviceUtils.getDeviceId();
  logI("📱 Device ID: $deviceId");
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    _reportError(details.exception, details.stack ?? StackTrace.current);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    _reportError(error, stack);
    return true;
  };

  runApp(const MyApp());
}

void _reportError(Object error, StackTrace stackTrace) {
  logDartError(error, stackTrace);
  FirebaseCrashlytics.instance.recordError(
    error,
    stackTrace,
    fatal: true,
    information: ["diagnostics", "version 1.0.0"],
  );
}
