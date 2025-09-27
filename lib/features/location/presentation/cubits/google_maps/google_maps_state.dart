import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'google_maps_state.freezed.dart';
@freezed
class GoogleMapsState with _$GoogleMapsState {
  const factory GoogleMapsState({
    LatLng? selectedLocation,
    @Default({}) Set<Marker> markers,
    @Default(false) bool isMapReady,
    @Default(false) bool isLoadingCurrentLocation,
    String? address,
  }) = _GoogleMapsState;
}