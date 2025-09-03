import 'package:flutter/material.dart';
import 'package:taskora/core/utils/logger.dart';

void logFlutterError(FlutterErrorDetails details) {
  logE("Flutter Error:", error: details.exception, stackTrace: details.stack);
}

void logDartError(Object error, StackTrace stackTrace) {
  logE("Dart Error:", error: error, stackTrace: stackTrace);
}
