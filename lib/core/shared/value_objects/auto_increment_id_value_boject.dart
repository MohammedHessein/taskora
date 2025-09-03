import 'package:fpdart/fpdart.dart';
import 'package:taskora/core/shared/value_objects/value_failure.dart';
import 'package:taskora/core/shared/value_objects/value_objects.dart';

class AutoIncrementId extends ValueObject<int> {
  factory AutoIncrementId(int input) {
    if (input < 0) {
      return AutoIncrementId._(
        left(ValueFailure.invalidAutoId(failedValue: input)),
      );
    } else {
      return AutoIncrementId._(right(input));
    }
  }

  const AutoIncrementId._(this.value);

  @override
  final Either<ValueFailure<int>, int> value;
}
