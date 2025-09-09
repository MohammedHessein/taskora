import 'dart:async';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/config/app_config.dart';
import 'package:taskora/core/config/app_initializer.dart';
import 'package:taskora/core/exceptions/exception_observer.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/core/service/fcm_service.dart';
import 'package:taskora/core/utils/device_utils.dart';
import 'package:taskora/core/utils/logger.dart';
import 'package:taskora/firebase_options.dart';

import 'package:taskora/material_app.dart';

void main() => runZonedGuarded(_runMyApp, _reportError);

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FcmService.fcmInit();
  await AppInitializer(AppConfig.getInstance()).init();

  final currentLocale = await CacheHelper.getAppLocale();
  final deviceId = await DeviceUtils.getDeviceId();
  logI("📱 Device ID: $deviceId");

  // Setup global Flutter error handling
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    _reportError(details.exception, details.stack ?? StackTrace.current);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    _reportError(error, stack);
    return true;
  };

  runApp(MyApp(currentLang: currentLocale));
}

void _reportError(Object error, StackTrace stackTrace) {
  logDartError(error, stackTrace);

  // Here you can add crash reporting service like Firebase Crashlytics
  // FirebaseCrashlytics.instance.recordError(
  //   error,
  //   stackTrace,
  //   fatal: true,
  //   information: ["diagnostics", "version 1.0.0"],
  // );
}
