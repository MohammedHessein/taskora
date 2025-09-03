import 'package:taskora/core/shared/value_objects/value_failure.dart';

/// Thrown when the user is not authenticated
class NotAuthenticatedError extends Error {}

/// Thrown when the user is not authorized
class UnexpectedValueError extends Error {
  /// Creates an [UnexpectedValueError]
  UnexpectedValueError(this.valueFailure);

  final ValueFailure valueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
