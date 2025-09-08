import '../../../generated/l10n.dart';

enum ResponseCode {
  success(200), // Success with data
  noContent(204), // Success with no data (no content)
  multipleChoices(300), // Displaying multiple choices for user
  movedPermanently(301), // Moved to a different URL
  permanentRedirect(308), // Permanent redirect, method and body will not change
  badRequest(400), // Failure, API rejected request
  unauthorized(401), // Failure, user is not authorized
  paymentRequired(
    402,
  ), // Might be used as part of a digital cash or micro-payment scheme
  forbidden(403), // Failure, API rejected request
  notFound(404), // Failure, not found
  methodNotAllowed(405), // Request was made using unsupported method
  tooManyRequests(
    429,
  ), // User has sent too many requests in a given amount of time
  unavailableForLegalReasons(
    451,
  ), // Denied access to the resource as a consequence of a legal demand
  internalServerError(500), // Failure, crash in server side
  badGateway(502), // Server received an invalid response
  serviceUnavailable(503), // Server down or in maintenance
  connectionTimeout(001), // Connection timed out
  cancel(002), // Request was cancelled
  receiveTimeout(003), // Receive timeout
  sendTimeout(004), // Send timeout
  cacheError(005), // Error related to caching
  noInternetConnection(006), // No internet connection
  kDefault(000); // Default error

  final int code;

  const ResponseCode(this.code);
}

class ResponseMessage {
  static Map<ResponseCode, String> messages = {
    ResponseCode.success: S.current.errorHandler_success,
    // Success with data
    ResponseCode.noContent: S.current.errorHandler_noContent,
    // Success with no data (no content)
    ResponseCode.multipleChoices: S.current.errorHandler_multipleChoices,
    // Displaying multiple choices for user
    ResponseCode.movedPermanently: S.current.errorHandler_movedPermanently,
    // Moved to a different URL
    ResponseCode.permanentRedirect: S.current.errorHandler_permanentRedirect,
    // Permanent redirect, method and body will not change
    ResponseCode.badRequest: S.current.errorHandler_badRequest,
    // Failure, API rejected request
    ResponseCode.unauthorized: S.current.errorHandler_unauthorized,
    // Failure, user is not authorized
    ResponseCode.paymentRequired: S.current.errorHandler_paymentRequired,
    // Might be used as part of a digital cash or micro-payment scheme
    ResponseCode.forbidden: S.current.errorHandler_forbidden,
    // Failure, API rejected request
    ResponseCode.notFound: S.current.errorHandler_notFound,
    // Failure, not found
    ResponseCode.methodNotAllowed: S.current.errorHandler_methodNotAllowed,
    // Request was made using unsupported method
    ResponseCode.internalServerError:
        S.current.errorHandler_internalServerError,
    // Failure, crash in server side
    ResponseCode.badGateway: S.current.errorHandler_badGateway,
    // Server received an invalid response
    ResponseCode.serviceUnavailable: S.current.errorHandler_serviceUnavailable,
    // Server down or in maintenance
    ResponseCode.tooManyRequests: S.current.errorHandler_tooManyRequests,
    // User has sent too many requests in a given amount of time
    ResponseCode.unavailableForLegalReasons:
        S.current.errorHandler_unavailableForLegalReasons,
    // Denied access to the resource as a consequence of a legal demand

    // Local status codes
    ResponseCode.connectionTimeout: S.current.errorHandler_timeout,
    // Connection timed out
    ResponseCode.cancel: S.current.errorHandler_requestCancelled,
    // Request was cancelled
    ResponseCode.receiveTimeout: S.current.errorHandler_receiveTimeout,
    // Receive timeout
    ResponseCode.sendTimeout: S.current.errorHandler_sendTimeout,
    // Send timeout
    ResponseCode.cacheError: S.current.errorHandler_cacheError,
    // Error related to caching
    ResponseCode.noInternetConnection: S.current.errorHandler_noInternet,
    // No internet connection
    ResponseCode.kDefault: S.current.errorHandler_somethingWentWrong,
    // Default error
  };

  static String getMessage(ResponseCode code) {
    return messages[code] ?? S.current.errorHandler_unknownError;
  }
}
