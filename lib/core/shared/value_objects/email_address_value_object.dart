import 'package:fpdart/fpdart.dart';
import 'package:taskora/core/shared/value_objects/value_failure.dart';
import 'package:taskora/core/shared/value_objects/value_objects.dart';
import 'package:taskora/core/shared/value_objects/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
