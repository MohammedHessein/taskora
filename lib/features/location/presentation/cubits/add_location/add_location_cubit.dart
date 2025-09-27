import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taskora/core/constants/cache_constants.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/features/location/presentation/cubits/add_location/add_location_state.dart';

class AddLocationCubit extends Cubit<AddLocationState> {
  AddLocationCubit() : super(const AddLocationState());

  void selectLocation(LatLng location) {
    emit(state.copyWith(selectedLocation: location));
    _getAddressFromLatLng(location);
  }

  void updateAddress(String address) {
    emit(state.copyWith(address: address));
  }

  Future<void> _getAddressFromLatLng(LatLng latLng) async {
    emit(state.copyWith(isLoading: true));

    try {
      final placemarks = await placemarkFromCoordinates(
        latLng.latitude,
        latLng.longitude,
      );

      if (placemarks.isNotEmpty) {
        final place = placemarks.first;
        final address =
            "${place.street ?? ""}, ${place.locality ?? ""}, ${place.country ?? ""}";
        emit(state.copyWith(address: address, isLoading: false));
      } else {
        emit(state.copyWith(isLoading: false));
      }
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: 'Failed to get address: $e',
        ),
      );
    }
  }

  Future<SaveLocationResult> saveLocation() async {
    if (state.selectedLocation == null || state.address.trim().isEmpty) {
      return SaveLocationResult.missingData;
    }
    emit(state.copyWith(isSaving: true));
    try {
      final savedData = await CacheHelper.getData(
        CacheConstants.savedLocations,
      );
      var savedLocations = <dynamic>[];

      if (savedData != null && savedData is String && savedData.isNotEmpty) {
        savedLocations = jsonDecode(savedData);
      }
      final isDuplicate = savedLocations.any((loc) {
        final existing = Map<String, dynamic>.from(loc);
        return existing["lat"] == state.selectedLocation!.latitude &&
            existing["lng"] == state.selectedLocation!.longitude;
      });

      if (isDuplicate) {
        emit(state.copyWith(isSaving: false));
        return SaveLocationResult.duplicate;
      }
      savedLocations.add({
        "lat": state.selectedLocation!.latitude,
        "lng": state.selectedLocation!.longitude,
        "address": state.address.trim(),
      });
      await CacheHelper.setData(
        CacheConstants.savedLocations,
        jsonEncode(savedLocations),
      );

      emit(state.copyWith(isSaving: false));
      return SaveLocationResult.success;
    } catch (e) {
      emit(
        state.copyWith(
          isSaving: false,
          errorMessage: 'Failed to save location: $e',
        ),
      );
      return SaveLocationResult.error;
    }
  }

  void clearError() {
    emit(state.copyWith(errorMessage: null));
  }

  void reset() {
    emit(const AddLocationState());
  }
}

enum SaveLocationResult {
  success,
  duplicate,
  missingData,
  error,
}
