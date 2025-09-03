import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

/// Base Value Object class
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {

  /// Factory constructor for [ValueFailure.exceedingLength]
  ///
  /// This constructor is used to create a [ValueFailure] when a given value
  /// exceeds a certain maximum length
  ///
  /// [failedValue] is the value that is being checked
  ///
  /// [max] is the maximum length that the value must not exceed
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;


  /// Factory constructor for [ValueFailure.empty]
  ///
  /// This constructor is used to create a [ValueFailure] when a given value
  /// is empty or missing
  ///
  /// [failedValue] is the value that is being checked
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;


  /// Factory constructor for [ValueFailure.multiline]
  ///
  /// This constructor is used to create a [ValueFailure] when a given value
  /// contains more than one line
  ///
  /// [failedValue] is the value that is being checked
  const factory ValueFailure.multiline({
    required T failedValue,
  }) = Multiline<T>;


  /// Factory constructor for [ValueFailure.numberTooLarge]
  ///
  /// This constructor is used to check if a given number is larger than a
  /// certain maximum value
  ///
  /// [failedValue] is the value that is being checked
  ///
  /// [max] is the maximum value that the number must not exceed
  const factory ValueFailure.numberTooLarge({
    required T failedValue,
    required num max,
  }) = NumberTooLarge<T>;

  /// Factory constructor for [ValueFailure.numberTooLarge]
  ///
  /// This constructor is used to check if a given number is larger than a
  /// certain maximum value
  const factory ValueFailure.listTooLong({
    required T failedValue,
    required int max,
  }) = ListTooLong<T>;

  /// Factory constructor for [ValueFailure.invalidEmail]
  ///
  /// This constructor is used to create a [ValueFailure] when a given value
  /// is not a valid email address
  ///
  /// [failedValue] is the value that is being checked
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  /// Factory constructor for [ValueFailure.shortPassword]
  ///
  /// This constructor is used to create a [ValueFailure] when a given password
  /// is considered too short based on a predefined minimum length
  ///
  /// [failedValue] is the password that is being checked
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  /// Factory constructor for [ValueFailure.invalidPhotoUrl]
  ///
  /// This constructor is used to create a [ValueFailure] when a given value
  /// is not a valid photo url
  ///
  /// [failedValue] is the value that is being checked
  const factory ValueFailure.invalidPhotoUrl({
    required T failedValue,
  }) = InvalidPhotoUrl<T>;

  /// Factory constructor for [ValueFailure.invalidAutoId]
  ///
  /// This constructor is used to create a [ValueFailure] when a given value
  /// is not a valid auto-incrementing id
  ///
  /// [failedValue] is the value that is being checked
  const factory ValueFailure.invalidAutoId({required T failedValue}) = InvalidAutoId<T>;

}