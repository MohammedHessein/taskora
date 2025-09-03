import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:taskora/core/config/app_navigator.dart';
import 'package:taskora/core/constants/cache_constants.dart';
import 'package:taskora/core/constants/firebase_constants.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/core/router/routes.dart';

// Background message handler - extracted to top level
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  FcmService._logMessage(message, "BACKGROUND");
  await FcmService._showNotification(message);
}

class FcmService {
  // Private static instances
  static final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  static final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  // Notification settings constants
  static const _androidSettings = AndroidInitializationSettings(
    '@drawable/ic_notification',
  );
  static const _iosSettings = DarwinInitializationSettings();
  static const _initSettings = InitializationSettings(
    android: _androidSettings,
    iOS: _iosSettings,
  );

  /// Main FCM initialization method
  static Future<void> fcmInit() async {
    try {
      _logInit();
      await _initLocalNotifications();
      await _requestPermissions();
      _setupMessageHandlers();
      _setupTokenRefresh();
      await getDeviceToken();
      await _testNotificationPermissions();
      debugPrint("✅ FCM initialization completed successfully");
    } catch (e, st) {
      _logError("FCM initialization failed", e, st);
    }
  }

  /// Initialize local notifications with tap handling
  static Future<void> _initLocalNotifications() async {
    debugPrint("🔔 Initializing local notifications...");

    final initialized = await _localNotifications.initialize(
      _initSettings,
      onDidReceiveNotificationResponse: _handleNotificationTap,
    );

    if (initialized ?? false) {
      await _createNotificationChannels();
      debugPrint("✅ Local notifications initialized successfully");
    } else {
      debugPrint("❌ Failed to initialize local notifications");
    }
  }

  /// Handle notification tap
  static void _handleNotificationTap(NotificationResponse details) {
    debugPrint("🔔 Notification tapped: ${details.payload}");

    final orderId = int.tryParse(details.payload ?? '');
    if (orderId != null) {
      _navigateToOrderDetails(orderId);
    }
  }

  /// Create Android notification channels
  static Future<void> _createNotificationChannels() async {
    final androidPlugin = _localNotifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();

    if (androidPlugin != null) {
      const channels = [
        AndroidNotificationChannel(
          FirebaseConstants.fcmChannelId,
          'High Importance Notifications',
          description: 'This channel is used for important notifications.',
          importance: Importance.max,
          enableLights: true,
        ),
        AndroidNotificationChannel(
          'test_channel',
          'Test Notifications',
          description: 'Test channel for debugging',
          importance: Importance.max,
        ),
      ];

      for (final channel in channels) {
        await androidPlugin.createNotificationChannel(channel);
      }
      debugPrint("✅ Android notification channels created");
    }
  }

  /// Request notification permissions
  static Future<void> _requestPermissions() async {
    debugPrint("📋 Requesting notification permissions...");

    final settings = await _messaging.requestPermission();
    _logPermissionResult(settings);

    // Android specific permissions
    final androidPlugin = _localNotifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();

    if (androidPlugin != null) {
      final granted = await androidPlugin.requestNotificationsPermission();
      final enabled = await androidPlugin.areNotificationsEnabled();
      debugPrint(
        "📱 Android notifications - granted: $granted, enabled: $enabled",
      );
    }
  }

  /// Setup message handlers
  static void _setupMessageHandlers() {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
    _handleAppOpenedFromNotification();
    debugPrint("✅ Message handlers registered");
  }

  /// Handle foreground messages
  static void _handleForegroundMessage(RemoteMessage message) {
    _logMessage(message, "FOREGROUND");
    _showNotification(message);
    _handleOrderNavigation(message);
  }

  /// Handle app opened from notification
  static void _handleAppOpenedFromNotification() {
    // From terminated state
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        debugPrint("🔔 App opened from terminated state: ${message.messageId}");
        _navigateToNotifications();
      }
    });

    // From background state
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      debugPrint("🔔 App opened from background: ${message.messageId}");
      _navigateToNotifications();
    });
  }

  /// Setup token refresh listener
  static void _setupTokenRefresh() {
    _messaging.onTokenRefresh.listen((newToken) async {
      debugPrint("♻️ FCM Token refreshed: ${newToken.substring(0, 20)}...");
      await CacheHelper.setSecuredString(CacheConstants.fcmToken, newToken);
    });
    debugPrint("✅ Token refresh listener registered");
  }

  /// Show notification
  static Future<void> _showNotification(RemoteMessage message) async {
    const notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        FirebaseConstants.fcmChannelId,
        'High Importance Notifications',
        channelDescription: 'This channel is used for important notifications.',
        importance: Importance.max,
        priority: Priority.high,
        icon: '@drawable/ic_notification',
        enableLights: true,
        playSound: true,
      ),
      iOS: DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    );

    final title = _extractTitle(message);
    final body = _extractBody(message);
    final notificationId = _generateNotificationId();

    debugPrint("📩 Showing notification - Title: $title, Body: $body");

    try {
      await _localNotifications.show(
        notificationId,
        title,
        body,
        notificationDetails,
        payload: message.data['order_id'],
      );
      debugPrint("✅ Notification shown successfully!");
    } catch (e) {
      debugPrint("❌ Failed to show notification: $e");
    }
  }

  /// Handle order navigation for foreground messages
  static void _handleOrderNavigation(RemoteMessage message) {
    final orderId = _extractOrderId(message.data['order_id']);
    if (orderId != null) {
      debugPrint("🚀 Navigating to order details: $orderId");
      _navigateToOrderDetails(orderId);
    } else {
      debugPrint("ℹ️ No valid order_id; skipping navigation");
    }
  }

  /// Get FCM token
  static Future<String?> getDeviceToken({int retries = 5}) async {
    try {
      debugPrint("🔑 Getting FCM token...");

      String? token;
      for (int i = 0; i < retries; i++) {
        token = await _messaging.getToken();
        if (token != null) break;
        debugPrint("⚠️ Token is null, retrying in 2s... (attempt ${i + 1})");
        await Future.delayed(const Duration(seconds: 2));
      }

      if (token != null) {
        debugPrint("✅ Got FCM Token: ${token.substring(0, 30)}...");
        await CacheHelper.setSecuredString(CacheConstants.fcmToken, token);
        return token;
      } else {
        debugPrint("❌ Token still null after $retries attempts");
        return null;
      }
    } catch (e, st) {
      _logError("Get FCM Token failed", e, st);
      return null;
    }
  }

  /// Test FCM manually
  static Future<void> testFcm() async {
    debugPrint("🧪 Testing FCM manually...");
    final token = await CacheHelper.getSecuredString(CacheConstants.fcmToken);
    if (token != null) {
      debugPrint("🔑 Token: ${token.substring(0, 30)}...");
      debugPrint("📋 Full token: $token");
    } else {
      debugPrint("❌ No FCM token found");
    }
  }

  // ==================== Private Helper Methods ====================

  /// Test notification permissions
  static Future<void> _testNotificationPermissions() async {
    debugPrint("🧪 Testing notification permissions...");

    final settings = await _messaging.getNotificationSettings();
    debugPrint(
      "📋 Auth: ${settings.authorizationStatus}, "
      "Alert: ${settings.alert}, Badge: ${settings.badge}, Sound: ${settings.sound}",
    );

    // iOS APNS token
    if (Platform.isIOS) {
      final apnsToken = await _messaging.getAPNSToken();
      debugPrint("🍎 APNS Token: ${apnsToken?.substring(0, 20) ?? 'null'}...");
    }
  }

  /// Extract title from message
  static String _extractTitle(RemoteMessage message) =>
      message.data['title'] ?? message.notification?.title ?? 'إشعار جديد';

  /// Extract body from message
  static String _extractBody(RemoteMessage message) =>
      message.data['message'] ??
      message.data['body'] ??
      message.notification?.body ??
      'لديك إشعار جديد';

  /// Extract and parse order ID
  static int? _extractOrderId(dynamic rawOrderId) {
    if (rawOrderId is int) return rawOrderId;
    if (rawOrderId is String) return int.tryParse(rawOrderId);
    return null;
  }

  /// Generate unique notification ID
  static int _generateNotificationId() =>
      DateTime.now().millisecondsSinceEpoch.remainder(100000);

  /// Navigate to order details
  static void _navigateToOrderDetails(int orderId) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      AppNavigator.navigatorKey.currentState?.pushNamed(
        Routes.orderDetails,
        arguments: orderId,
      );
    });
  }

  /// Navigate to notifications list
  static void _navigateToNotifications() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      AppNavigator.navigatorKey.currentState?.pushNamed(Routes.notifications);
    });
  }

  /// Log initialization info
  static void _logInit() {
    debugPrint("🚀 Starting FCM initialization...");
    debugPrint("📱 Platform: ${Platform.operatingSystem}");
    debugPrint("🔧 Debug mode: $kDebugMode");
  }

  /// Log message details
  static void _logMessage(RemoteMessage message, String type) {
    debugPrint("🔥🔥🔥 $type MESSAGE RECEIVED! 🔥🔥🔥");
    debugPrint("📩 ID: ${message.messageId}");
    debugPrint("📩 Data: ${message.data}");
    debugPrint("📩 Notification: ${message.notification?.toMap()}");
    debugPrint("📩 From: ${message.from}");
    debugPrint("📩 Sent: ${message.sentTime}");
  }

  /// Log permission results
  static void _logPermissionResult(NotificationSettings settings) {
    debugPrint(
      "📌 Permissions - Auth: ${settings.authorizationStatus}, "
      "Alert: ${settings.alert}, Badge: ${settings.badge}, Sound: ${settings.sound}",
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint("✅ Notification permissions granted");
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      debugPrint("⚠️ Provisional notification permissions granted");
    } else {
      debugPrint(
        "❌ Notification permissions denied: ${settings.authorizationStatus}",
      );
    }
  }

  /// Log and record errors
  static Future<void> _logError(
    String reason,
    dynamic error,
    StackTrace stackTrace,
  ) async {
    debugPrint("❌ $reason: $error");
    debugPrint("Stack trace: $stackTrace");
    await FirebaseCrashlytics.instance.recordError(
      error,
      stackTrace,
      reason: reason,
    );
  }
}
