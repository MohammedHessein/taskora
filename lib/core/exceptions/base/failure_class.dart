import 'package:equatable/equatable.dart';
import 'package:taskora/core/resources/api/responses.dart';

class Failure extends Equatable {
  Failure(
    this.code,
    this.message, {
    this.identifier,
    DateTime? timeStamp,
    this.notice,
  }) : timeStamp = timeStamp ?? DateTime.now();

  factory Failure.defaultError({String? identifier, String? notice}) {
    return Failure(
      ResponseCode.kDefault.code,
      ResponseMessage.messages[ResponseCode.kDefault]!,
      identifier: identifier ?? "DefaultError",
      notice: notice,
    );
  }
  factory Failure.locationError({String? notice}) {
    return Failure(
      -1,
      "Unable to get valid location",
      identifier: "LocationError",
      notice: notice,
    );
  }

  final DateTime timeStamp;
  final num code;
  final String message;
  final String? identifier;
  final String? notice;

  String get humanReadableMessage => message;

  @override
  String toString() =>
      'Failure(code: $code, message: $message, identifier: $identifier, timeStamp: $timeStamp, notice: $notice)';

  @override
  List<Object?> get props => [code, message, identifier, timeStamp, notice];
}
