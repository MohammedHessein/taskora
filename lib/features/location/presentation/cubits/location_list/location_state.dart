import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taskora/features/location/data/models/location_model.dart';
part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    @Default([]) List<LocationModel> savedLocations,
    LocationModel? selectedLocation,
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(0) int selectedIndex,
  }) = _LocationState;
}
