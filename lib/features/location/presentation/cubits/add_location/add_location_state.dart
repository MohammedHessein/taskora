import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'add_location_state.freezed.dart';

@freezed
class AddLocationState with _$AddLocationState {
  const factory AddLocationState({
    LatLng? selectedLocation,
    @Default('') String address,
    @Default(false) bool isLoading,
    @Default(false) bool isSaving,
    String? errorMessage,
  }) = _AddLocationState;
}
