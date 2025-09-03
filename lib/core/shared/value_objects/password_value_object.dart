import 'package:fpdart/fpdart.dart';
import 'package:taskora/core/shared/value_objects/value_failure.dart';
import 'package:taskora/core/shared/value_objects/value_objects.dart';
import 'package:taskora/core/shared/value_objects/value_validators.dart';

class Password extends ValueObject<String> {
  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
