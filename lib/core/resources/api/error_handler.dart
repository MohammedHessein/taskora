import 'dart:io';

import 'package:dio/dio.dart';
import 'package:taskora/core/exceptions/base/failure_class.dart';
import 'package:taskora/core/resources/api/data_sources.dart';
import 'package:taskora/core/utils/logger.dart';

import 'package:taskora/generated/l10n.dart';

class ErrorHandler implements Exception {
  ErrorHandler.handle(error, {String? identifier}) {
    failure = FailureFactory.fromException(error, identifier: identifier);
    logE('Error: ${failure.message}', error: error);
  }
  late final Failure failure;
}

class FailureFactory {
  /// Map a `DataSource` to a `Failure` with optional context
  static Failure fromDataSource(
    DataSource source, {
    String? identifier,
    String? notice,
  }) {
    return source.getFailure(identifier: identifier, notice: notice);
  }

  /// Create a `Failure` from any kind of exception
  static Failure fromException(error, {String? identifier}) {
    if (error is DioException) {
      return _fromDioException(error, identifier: identifier);
    } else if (error is SocketException) {
      return fromDataSource(
        DataSource.noInternetConnection,
        identifier: identifier ?? "SocketException",
      );
    } else if (error is FormatException) {
      return fromDataSource(
        DataSource.badRequest,
        identifier: identifier ?? "FormatException",
      );
    } else {
      return Failure.defaultError(
        identifier: identifier,
        notice: error.toString(),
      );
    }
  }

  /// Handle Dio-specific errors
  static Failure _fromDioException(DioException error, {String? identifier}) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return fromDataSource(
          DataSource.connectionTimeout,
          identifier: identifier ?? "Dio.connectionTimeout",
        );

      case DioExceptionType.sendTimeout:
        return fromDataSource(
          DataSource.sendTimeout,
          identifier: identifier ?? "Dio.sendTimeout",
        );

      case DioExceptionType.receiveTimeout:
        return fromDataSource(
          DataSource.receiveTimeout,
          identifier: identifier ?? "Dio.receiveTimeout",
        );

      case DioExceptionType.cancel:
        return fromDataSource(
          DataSource.cancel,
          identifier: identifier ?? "Dio.cancel",
        );

      case DioExceptionType.badResponse:
      default:
        final response = error.response;
        final data = response?.data;
        final message = extractErrorMessage(data);

        return Failure(
          response?.statusCode ?? 0,
          message,
          identifier: identifier ?? "Dio.badResponse",
          notice: error.message,
        );
    }
  }
}

String extractErrorMessage(dynamic data) {
  if (data is Map<String, dynamic>) {
    if (data["errors"] is Map<String, dynamic>) {
      final errorsMap = data["errors"] as Map<String, dynamic>;
      final allErrors = errorsMap.values
          .expand((v) => v is List ? v : [v])
          .map((e) => e.toString())
          .toList();
      if (allErrors.isNotEmpty) return allErrors.join("\n");
    }
    if (data["message"] != null) {
      return data["message"].toString();
    }
  }
  if (data is String) return data;
  return S.current.errorHandler_unknownError;
}
