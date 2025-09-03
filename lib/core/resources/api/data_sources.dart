import 'package:taskora/core/exceptions/base/failure_class.dart';
import 'package:taskora/core/resources/api/responses.dart';

enum DataSource {
  success,
  noContent,
  multipleChoices,
  movedPermanently,
  permanentRedirect,
  badRequest,
  unauthorized,
  paymentRequired,
  forbidden,
  notFound,
  methodNotAllowed,
  tooManyRequests,
  unavailableForLegalReasons,
  internalServerError,
  badGateway,
  serviceUnavailable,
  connectionTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  kDefault,
}

extension DataSourceExtension on DataSource {
  Failure getFailure({String? identifier, String? notice}) {
    final failureMap = {
      DataSource.success: ResponseCode.success,
      DataSource.noContent: ResponseCode.noContent,
      DataSource.multipleChoices: ResponseCode.multipleChoices,
      DataSource.movedPermanently: ResponseCode.movedPermanently,
      DataSource.permanentRedirect: ResponseCode.permanentRedirect,
      DataSource.badRequest: ResponseCode.badRequest,
      DataSource.unauthorized: ResponseCode.unauthorized,
      DataSource.paymentRequired: ResponseCode.paymentRequired,
      DataSource.forbidden: ResponseCode.forbidden,
      DataSource.notFound: ResponseCode.notFound,
      DataSource.methodNotAllowed: ResponseCode.methodNotAllowed,
      DataSource.tooManyRequests: ResponseCode.tooManyRequests,
      DataSource.unavailableForLegalReasons:
          ResponseCode.unavailableForLegalReasons,
      DataSource.internalServerError: ResponseCode.internalServerError,
      DataSource.badGateway: ResponseCode.badGateway,
      DataSource.serviceUnavailable: ResponseCode.serviceUnavailable,
      DataSource.connectionTimeout: ResponseCode.connectionTimeout,
      DataSource.cancel: ResponseCode.cancel,
      DataSource.receiveTimeout: ResponseCode.receiveTimeout,
      DataSource.sendTimeout: ResponseCode.sendTimeout,
      DataSource.cacheError: ResponseCode.cacheError,
      DataSource.noInternetConnection: ResponseCode.noInternetConnection,
      DataSource.kDefault: ResponseCode.kDefault,
    };

    final responseCode = failureMap[this] ?? ResponseCode.kDefault;
    final message =
        ResponseMessage.messages[responseCode] ??
        ResponseMessage.messages[ResponseCode.kDefault]!;

    return Failure(
      responseCode.code,
      message,
      identifier: identifier ?? name,
      notice: notice,
    );
  }
}
