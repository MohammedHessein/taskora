// ignore_for_file:

import 'package:talker_flutter/talker_flutter.dart';

// Singleton Talker Instance
final talker = TalkerFlutter.init();

// Logging Utility Functions

/// Debug log
void logD(message) {
  talker.debug(message);
}

/// Info log
void logI(message) {
  talker.info(message);
}

/// Warning log
void logW(message) {
  talker.warning(message);
}

/// Error log
void logE(message, {error, StackTrace? stackTrace}) {
  talker.error(message,error, stackTrace);
}

/// Fatal error log
void logFatal(message, {error, StackTrace? stackTrace}) {
  talker.critical(message, error, stackTrace);
}

/// Route log
void logRoute(message) {
  talker.logCustom(TalkerLog(message, key: TalkerLogType.route.key));
}

/// Custom log
void logCustom(message,
    {String? title, LogLevel? logLevel = LogLevel.debug, AnsiPen? pen,}) {
  talker.logCustom(
      TalkerLog(message, title: title, logLevel: logLevel, pen: pen),);
}
