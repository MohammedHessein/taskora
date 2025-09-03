import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:taskora/core/utils/app_vars.dart';
import 'package:taskora/core/utils/logger.dart';

// Global function for background message handler - must be top-level or static
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  // Handle the background message here
}

class FirebaseResources {
  Future<void> android() async {
    try {
      // Initialize Firebase Core first and ensure it's complete
      await Firebase.initializeApp();

      // Add a small delay to ensure the method channel is ready
      await Future.delayed(const Duration(milliseconds: 500));

      // Request permissions
      await FirebaseMessaging.instance.requestPermission();

      final messaging = FirebaseMessaging.instance;

      // Get token
      AppVars.fcmToken = await messaging.getToken();
      logI("Device Token: ${AppVars.fcmToken}");

      // Set background message handler with try-catch
      try {
        FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler,
        );
      } catch (e) {
        logE("Error setting background message handler: $e");
        // Continue without background handler if it fails
      }

      // Set foreground message handlers
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        logW('Message received in foreground');
      });

      FirebaseMessaging.onMessageOpenedApp.listen((message) {
        logW('App opened from notification');
      });
    } catch (e) {
      logE("Error initializing Firebase Messaging for Android: $e");
      rethrow;
    }
  }

  Future<void> ios() async {
    try {
      await Firebase.initializeApp();

      await Future.delayed(const Duration(milliseconds: 500));

      final messaging = FirebaseMessaging.instance;
      final settings = await messaging.requestPermission();

      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        logI('User granted permission');
      } else if (settings.authorizationStatus ==
          AuthorizationStatus.provisional) {
        logW('User granted provisional permission');
      } else {
        logE('User declined or has not accepted permission');
      }

      AppVars.fcmToken = await messaging.getToken();
      logI("Device Token: ${AppVars.fcmToken}");
      try {
        FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler,
        );
      } catch (e) {
        logE("Error setting background message handler: $e");
      }

      FirebaseMessaging.onMessageOpenedApp.listen((
        RemoteMessage remoteMessage,
      ) {
        logI("Message opened app: ${remoteMessage.messageId}");
      });
    } catch (e) {
      logE("Error initializing Firebase Messaging for iOS: $e");
      rethrow;
    }
  }
}
