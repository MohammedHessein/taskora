// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_maps_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoogleMapsState {
  LatLng? get selectedLocation => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  bool get isMapReady => throw _privateConstructorUsedError;
  bool get isLoadingCurrentLocation => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoogleMapsStateCopyWith<GoogleMapsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapsStateCopyWith<$Res> {
  factory $GoogleMapsStateCopyWith(
          GoogleMapsState value, $Res Function(GoogleMapsState) then) =
      _$GoogleMapsStateCopyWithImpl<$Res, GoogleMapsState>;
  @useResult
  $Res call(
      {LatLng? selectedLocation,
      Set<Marker> markers,
      bool isMapReady,
      bool isLoadingCurrentLocation,
      String? address});
}

/// @nodoc
class _$GoogleMapsStateCopyWithImpl<$Res, $Val extends GoogleMapsState>
    implements $GoogleMapsStateCopyWith<$Res> {
  _$GoogleMapsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocation = freezed,
    Object? markers = null,
    Object? isMapReady = null,
    Object? isLoadingCurrentLocation = null,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      selectedLocation: freezed == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      isMapReady: null == isMapReady
          ? _value.isMapReady
          : isMapReady // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCurrentLocation: null == isLoadingCurrentLocation
          ? _value.isLoadingCurrentLocation
          : isLoadingCurrentLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleMapsStateImplCopyWith<$Res>
    implements $GoogleMapsStateCopyWith<$Res> {
  factory _$$GoogleMapsStateImplCopyWith(_$GoogleMapsStateImpl value,
          $Res Function(_$GoogleMapsStateImpl) then) =
      __$$GoogleMapsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LatLng? selectedLocation,
      Set<Marker> markers,
      bool isMapReady,
      bool isLoadingCurrentLocation,
      String? address});
}

/// @nodoc
class __$$GoogleMapsStateImplCopyWithImpl<$Res>
    extends _$GoogleMapsStateCopyWithImpl<$Res, _$GoogleMapsStateImpl>
    implements _$$GoogleMapsStateImplCopyWith<$Res> {
  __$$GoogleMapsStateImplCopyWithImpl(
      _$GoogleMapsStateImpl _value, $Res Function(_$GoogleMapsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocation = freezed,
    Object? markers = null,
    Object? isMapReady = null,
    Object? isLoadingCurrentLocation = null,
    Object? address = freezed,
  }) {
    return _then(_$GoogleMapsStateImpl(
      selectedLocation: freezed == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      isMapReady: null == isMapReady
          ? _value.isMapReady
          : isMapReady // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCurrentLocation: null == isLoadingCurrentLocation
          ? _value.isLoadingCurrentLocation
          : isLoadingCurrentLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GoogleMapsStateImpl implements _GoogleMapsState {
  const _$GoogleMapsStateImpl(
      {this.selectedLocation,
      final Set<Marker> markers = const {},
      this.isMapReady = false,
      this.isLoadingCurrentLocation = false,
      this.address})
      : _markers = markers;

  @override
  final LatLng? selectedLocation;
  final Set<Marker> _markers;
  @override
  @JsonKey()
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  @JsonKey()
  final bool isMapReady;
  @override
  @JsonKey()
  final bool isLoadingCurrentLocation;
  @override
  final String? address;

  @override
  String toString() {
    return 'GoogleMapsState(selectedLocation: $selectedLocation, markers: $markers, isMapReady: $isMapReady, isLoadingCurrentLocation: $isLoadingCurrentLocation, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleMapsStateImpl &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.isMapReady, isMapReady) ||
                other.isMapReady == isMapReady) &&
            (identical(
                    other.isLoadingCurrentLocation, isLoadingCurrentLocation) ||
                other.isLoadingCurrentLocation == isLoadingCurrentLocation) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedLocation,
      const DeepCollectionEquality().hash(_markers),
      isMapReady,
      isLoadingCurrentLocation,
      address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleMapsStateImplCopyWith<_$GoogleMapsStateImpl> get copyWith =>
      __$$GoogleMapsStateImplCopyWithImpl<_$GoogleMapsStateImpl>(
          this, _$identity);
}

abstract class _GoogleMapsState implements GoogleMapsState {
  const factory _GoogleMapsState(
      {final LatLng? selectedLocation,
      final Set<Marker> markers,
      final bool isMapReady,
      final bool isLoadingCurrentLocation,
      final String? address}) = _$GoogleMapsStateImpl;

  @override
  LatLng? get selectedLocation;
  @override
  Set<Marker> get markers;
  @override
  bool get isMapReady;
  @override
  bool get isLoadingCurrentLocation;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$GoogleMapsStateImplCopyWith<_$GoogleMapsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
