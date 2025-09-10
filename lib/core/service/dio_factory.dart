import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:taskora/core/constants/api_constants.dart';
import 'package:taskora/core/constants/cache_constants.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/core/resources/api/error_handler.dart';

// Define a singleton class for DioFactory to manage Dio instances
class DioFactory {
  DioFactory._();

  static Dio? dio;
  static SecurityContext? securityContext;

  static Future<Dio> initializeDio() async {
    if (dio != null) return dio!;

    dio = Dio();

    if (!kIsWeb) {
      await loadSSLCertificate();
    }

    final token = await CacheHelper.getSecuredString(
      ApiConstants.accessTokenKey,
    );

    dio!
      ..options = BaseOptions(
        baseUrl: ApiConstants.apiBaseUrl,
        headers: {
          "Content-Type": ApiConstants.applicationJson,
          "Accept": ApiConstants.applicationJson,
          "Accept-Language": await CacheHelper.getData(CacheConstants.appLang),
          if (token != null && token.isNotEmpty)
            'Authorization': 'Bearer $token',
        },
        receiveTimeout: const Duration(milliseconds: ApiConstants.apiTimeOut),
        sendTimeout: const Duration(milliseconds: ApiConstants.apiTimeOut),
        connectTimeout: const Duration(milliseconds: ApiConstants.apiTimeOut),
      )
      ..httpClientAdapter = Http2Adapter(
        ConnectionManager(
          idleTimeout: const Duration(seconds: 10),
          onClientCreate: (_, config) {
            config.onBadCertificate = (_) => false;
          },
        ),
      );

    _addInterceptors();
    return dio!;
  }

  static void _addInterceptors() {
    dio!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await CacheHelper.getSecuredString(
            ApiConstants.accessTokenKey,
          );
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
      ),
    );
    errorInterceptor();
    loggerInterceptor();
    cookieManagerInterceptor();
    dioSmartRetryInterceptor();
  }

  static void errorInterceptor() {
    dio!.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          debugPrint("Response status: ${error.response?.statusCode}");
          debugPrint("Response data: ${error.response?.data}");
          String? errorMessage;
          if (error.response?.data is Map<String, dynamic>) {
            final responseData = error.response!.data as Map<String, dynamic>;
            errorMessage = responseData['message'] as String?;
          }

          final failure = ErrorHandler.handle(error).failure;
          handler.reject(
            DioException(
              requestOptions: error.requestOptions,
              response: error.response,
              error: failure,
            ),
          );
        },
      ),
    );
  }

  static void loggerInterceptor() {
    if (!kReleaseMode) {
      dio!.interceptors.add(
        TalkerDioLogger(
          settings: const TalkerDioLoggerSettings(
            printResponseHeaders: true,
            printRequestHeaders: true,
          ),
        ),
      );
    }
  }

  static void cookieManagerInterceptor() {
    dio!.interceptors.add(CookieManager(CookieJar()));
  }

  static void dioSmartRetryInterceptor() {
    dio!.interceptors.add(
      RetryInterceptor(
        dio: dio!,
        logPrint: print,
        retryDelays: const [
          Duration(seconds: 15),
          Duration(seconds: 30),
          Duration(seconds: 45),
        ],
      ),
    );
  }

  static Future<void> loadSSLCertificate() async {
    try {
      final certificateData = await rootBundle.load(
        "assets/certificates/crt.pem",
      );
      final context = SecurityContext()
        ..setTrustedCertificatesBytes(certificateData.buffer.asUint8List());
      securityContext = context;
    } catch (error) {
      debugPrint("Failed to load SSL certificate: $error");
    }
  }
}
