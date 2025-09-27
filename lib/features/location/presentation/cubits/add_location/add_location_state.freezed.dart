// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddLocationState {
  LatLng? get selectedLocation => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddLocationStateCopyWith<AddLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddLocationStateCopyWith<$Res> {
  factory $AddLocationStateCopyWith(
          AddLocationState value, $Res Function(AddLocationState) then) =
      _$AddLocationStateCopyWithImpl<$Res, AddLocationState>;
  @useResult
  $Res call(
      {LatLng? selectedLocation,
      String address,
      bool isLoading,
      bool isSaving,
      String? errorMessage});
}

/// @nodoc
class _$AddLocationStateCopyWithImpl<$Res, $Val extends AddLocationState>
    implements $AddLocationStateCopyWith<$Res> {
  _$AddLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocation = freezed,
    Object? address = null,
    Object? isLoading = null,
    Object? isSaving = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      selectedLocation: freezed == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddLocationStateImplCopyWith<$Res>
    implements $AddLocationStateCopyWith<$Res> {
  factory _$$AddLocationStateImplCopyWith(_$AddLocationStateImpl value,
          $Res Function(_$AddLocationStateImpl) then) =
      __$$AddLocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LatLng? selectedLocation,
      String address,
      bool isLoading,
      bool isSaving,
      String? errorMessage});
}

/// @nodoc
class __$$AddLocationStateImplCopyWithImpl<$Res>
    extends _$AddLocationStateCopyWithImpl<$Res, _$AddLocationStateImpl>
    implements _$$AddLocationStateImplCopyWith<$Res> {
  __$$AddLocationStateImplCopyWithImpl(_$AddLocationStateImpl _value,
      $Res Function(_$AddLocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocation = freezed,
    Object? address = null,
    Object? isLoading = null,
    Object? isSaving = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AddLocationStateImpl(
      selectedLocation: freezed == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddLocationStateImpl implements _AddLocationState {
  const _$AddLocationStateImpl(
      {this.selectedLocation,
      this.address = '',
      this.isLoading = false,
      this.isSaving = false,
      this.errorMessage});

  @override
  final LatLng? selectedLocation;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AddLocationState(selectedLocation: $selectedLocation, address: $address, isLoading: $isLoading, isSaving: $isSaving, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLocationStateImpl &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLocation, address,
      isLoading, isSaving, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLocationStateImplCopyWith<_$AddLocationStateImpl> get copyWith =>
      __$$AddLocationStateImplCopyWithImpl<_$AddLocationStateImpl>(
          this, _$identity);
}

abstract class _AddLocationState implements AddLocationState {
  const factory _AddLocationState(
      {final LatLng? selectedLocation,
      final String address,
      final bool isLoading,
      final bool isSaving,
      final String? errorMessage}) = _$AddLocationStateImpl;

  @override
  LatLng? get selectedLocation;
  @override
  String get address;
  @override
  bool get isLoading;
  @override
  bool get isSaving;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AddLocationStateImplCopyWith<_$AddLocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
