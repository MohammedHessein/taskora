import 'dart:ui';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:taskora/core/config/app_initializer.dart';
import 'package:taskora/core/database/hive_service.dart';
import 'package:taskora/core/dependency_injection/injector.dart';
import 'package:taskora/core/exceptions/exception_observer.dart';
import 'package:taskora/core/resources/firebase/firebase_resources.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/cubit_observer.dart';
import 'package:taskora/core/utils/logger.dart';
import 'package:taskora/generated/l10n.dart';
import 'package:universal_platform/universal_platform.dart';

class AppConfig extends ApplicationConfig {
  factory AppConfig.getInstance() {
    return _instance;
  }

  AppConfig._();

  static final AppConfig _instance = AppConfig._();

  @override
  Future<void> config() async {
    try {
      Bloc.observer = appCubitObserver;

      // Setup HydratedStorage
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: UniversalPlatform.isWeb
            ? HydratedStorageDirectory.web
            : HydratedStorageDirectory((await getTemporaryDirectory()).path),
      );

      // Initialize Hive
      await HiveFactory.create();

      // Initialize screen size utility
      await ScreenUtil.ensureScreenSize();

      // Configure dependencies
      configureDependencies();

      // Set error widget builder
      ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
        FirebaseCrashlytics.instance.recordError(
          errorDetails.exception,
          errorDetails.stack,
          reason: 'UI build error',
        );

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
              child: Text(
                S.current.common_somethingWentWrong,
                textAlign: TextAlign.center,
                style: CustomTextStyle.kTextStyleF18,
              ),
            ),
          ),
        );
      };

      FlutterError.onError = (FlutterErrorDetails details) {
        logFlutterError(details);

        FirebaseCrashlytics.instance.recordError(
          details.exception,
          details.stack,
          fatal: true,
          reason: details.summary,
          information: ["Flutter Error"],
        );
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
      if (UniversalPlatform.isAndroid) {
        await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(
          true,
        );
        try {
          await FirebaseResources().android();
        } catch (e) {
          logE("Failed to initialize Firebase Messaging for Android: $e");
        }
      } else if (UniversalPlatform.isIOS) {
        await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(
          true,
        );
        try {
          await FirebaseResources().ios();
        } catch (e) {
          logE("Failed to initialize Firebase Messaging for iOS: $e");
        }
      }
    } catch (e) {
      logE("Error during app configuration: $e");
      rethrow;
    }
  }
}
