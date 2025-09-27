import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskora/core/constants/cache_constants.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/features/location/data/models/location_model.dart';
import 'package:taskora/features/location/presentation/cubits/location_list/location_state.dart';

class LocationListCubit extends Cubit<LocationState> {
  LocationListCubit() : super(const LocationState());

  Future<void> loadLocations() async {
    emit(state.copyWith(isLoading: true));

    try {
      final savedData = await CacheHelper.getData(
        CacheConstants.savedLocations,
      );
      final selectedData = await CacheHelper.getData(
        CacheConstants.selectedLocation,
      );

      var locations = <LocationModel>[];
      LocationModel? selectedLocation;
      var selectedIndex = -1;
      if (savedData != null && savedData is String && savedData.isNotEmpty) {
        final List<dynamic> jsonList = jsonDecode(savedData);
        locations = jsonList
            .map((json) => LocationModel.fromJson(json))
            .toList();
      }
      if (selectedData != null &&
          selectedData is String &&
          selectedData.isNotEmpty) {
        final selectedJson = jsonDecode(selectedData);
        selectedLocation = LocationModel.fromJson(selectedJson);
        selectedIndex = locations.indexWhere(
          (location) =>
              location.lat == selectedLocation!.lat &&
              location.lng == selectedLocation.lng,
        );
      }

      emit(
        state.copyWith(
          savedLocations: locations,
          selectedLocation: selectedLocation,
          selectedIndex: selectedIndex,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: 'Failed to load locations: $e',
        ),
      );
    }
  }

  void selectLocation(int index) {
    if (index >= 0 && index < state.savedLocations.length) {
      final location = state.savedLocations[index];
      emit(
        state.copyWith(
          selectedLocation: location,
          selectedIndex: index,
        ),
      );
    }
  }

  Future<bool> deleteLocation(int index) async {
    if (index < 0 || index >= state.savedLocations.length) return false;

    try {
      final updatedLocations = List<LocationModel>.from(state.savedLocations)
        ..removeAt(index);
      var newSelectedIndex = state.selectedIndex;
      var newSelectedLocation = state.selectedLocation;
      if (state.selectedIndex == index) {
        newSelectedIndex = -1;
        newSelectedLocation = null;
      } else if (state.selectedIndex > index) {
        newSelectedIndex = state.selectedIndex - 1;
      }
      final jsonList = updatedLocations
          .map((location) => location.toJson())
          .toList();
      await CacheHelper.setData(
        CacheConstants.savedLocations,
        jsonEncode(jsonList),
      );

      emit(
        state.copyWith(
          savedLocations: updatedLocations,
          selectedLocation: newSelectedLocation,
          selectedIndex: newSelectedIndex,
        ),
      );

      return true;
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Failed to delete location: $e'));
      return false;
    }
  }

  Future<bool> confirmSelection() async {
    if (state.selectedLocation == null) return false;

    try {
      await CacheHelper.setData(
        CacheConstants.selectedLocation,
        jsonEncode(state.selectedLocation!.toJson()),
      );
      return true;
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Failed to confirm selection: $e'));
      return false;
    }
  }

  void clearError() {
    emit(state.copyWith(errorMessage: null));
  }
}
