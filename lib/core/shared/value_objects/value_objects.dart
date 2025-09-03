import 'package:fpdart/fpdart.dart';
import 'package:meta/meta.dart';
import 'package:taskora/core/shared/value_objects/value_errors.dart';
import 'package:taskora/core/shared/value_objects/value_failure.dart';

/// Base Value Object class
@immutable
abstract class ValueObject<T> {
  /// Creates a new ValueObject
  const ValueObject();

  /// Holds either a [ValueFailure] or a valid value
  Either<ValueFailure<T>, T> get value;

  /// Returns the value or throws [UnexpectedValueError]
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  }

  /// Returns the value or a default fallback
  T getOrElse(T defaultValue) {
    return value.getOrElse((f) => defaultValue);
  }

  /// Useful for global form validation
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(left, (_) => right(unit));
  }

  /// Returns true if the value is valid, false otherwise
  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ValueObject<T> && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
