import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:taskora/core/exceptions/base/failure_class.dart';
import 'package:taskora/core/resources/api/data_sources.dart';
import 'package:taskora/core/resources/api/error_handler.dart';

/// Executes a provided asynchronous function while checking for internet connectivity.
///
/// If the device is connected to the internet, it attempts to run the function and
/// returns either the successful result wrapped in `Right` or an error wrapped in `Left`.
///
/// If there's no internet connection, it immediately returns a "no internet connection" failure.
Future<Either<Failure, T>> executeAndHandleError<T>(
  Future<T> Function() function,
) async {
  final result = await Connectivity().checkConnectivity();

  if (result.contains(ConnectivityResult.mobile) ||
      result.contains(ConnectivityResult.wifi) ||
      result.contains(ConnectivityResult.ethernet)) {
    try {
      final response = await function();
      debugPrint(response.toString());
      return Right(response);
    } on Failure catch (error) {
      final failure = ErrorHandler.handle(error).failure;
      debugPrint(failure.toString());
      return Left(failure);
    } on DioException catch (error) {
      final failure = ErrorHandler.handle(error).failure;
      debugPrint(failure.toString());
      return Left(failure);
    }
  } else {
    return left(DataSource.noInternetConnection.getFailure());
  }
}
