import 'package:fpdart/fpdart.dart';
import 'package:taskora/core/shared/value_objects/value_failure.dart';
import 'package:taskora/core/shared/value_objects/value_objects.dart';
import 'package:uuid/uuid.dart';

/// A unique identifier, such as a UUID.
///
/// This class is useful for assigning IDs to objects without having to worry
/// about whether they are unique or not.
///
/// For example, you can use it to generate a random ID when creating a new
/// object:
class UniqueId extends ValueObject<String> {
  // We cannot let a simple String be passed in. This would allow for possible non-unique IDs.
  /// Creates a new UniqueId with a random UUID.
  ///
  /// This is useful when creating a new object and you want to assign it a
  /// unique identifier without having to worry about whether it is unique or
  /// not.
  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1()));
  }

  /// Used with strings we trust are unique, such as database IDs.
  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    return UniqueId._(right(uniqueIdStr));
  }

  const UniqueId._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
