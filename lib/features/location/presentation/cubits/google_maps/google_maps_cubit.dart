import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taskora/core/constants/maps_constants.dart';
import 'package:taskora/core/dependency_injection/injector.dart';
import 'package:taskora/core/service/location_service.dart';
import 'package:taskora/features/location/presentation/cubits/google_maps/google_maps_state.dart';

class GoogleMapsCubit extends Cubit<GoogleMapsState> {
  GoogleMapsCubit({LatLng? initialLocation})
    : super(
        GoogleMapsState(
          selectedLocation: initialLocation,
        ),
      ) {
    if (initialLocation != null) {
      _updateMarkers(initialLocation);
    }
  }

  final LocationService _locationService = di<LocationService>();
  GoogleMapController? _mapController;

  void onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    emit(state.copyWith(isMapReady: true));

    if (state.selectedLocation != null) {
      _mapController!.animateCamera(
        CameraUpdate.newLatLngZoom(state.selectedLocation!, 14),
      );
    } else {
      _mapController!.animateCamera(
        CameraUpdate.newCameraPosition(MapsConstants.ksaPosition),
      );
    }
  }

  void selectLocation(LatLng location) {
    emit(state.copyWith(selectedLocation: location));
    _updateMarkers(location);
  }

  void _updateMarkers(LatLng location) {
    final markers = <Marker>{
      Marker(
        markerId: const MarkerId('selected_marker'),
        position: location,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        infoWindow: InfoWindow(
          title: 'Selected Location',
          snippet:
              '${location.latitude.toStringAsFixed(4)}, ${location.longitude.toStringAsFixed(4)}',
        ),
      ),
    };

    emit(state.copyWith(markers: markers));
  }

  Future<void> selectCurrentLocation() async {
    emit(state.copyWith(isLoadingCurrentLocation: true));

    try {
      final locationData = await _locationService.getLocation();

      if (locationData.latitude != null && locationData.longitude != null) {
        final userLatLng = LatLng(
          locationData.latitude!,
          locationData.longitude!,
        );

        if (state.isMapReady && _mapController != null) {
          unawaited(
            _mapController!.animateCamera(
              CameraUpdate.newLatLngZoom(userLatLng, 14),
            ),
          );
        }

        selectLocation(userLatLng);
      }
    } catch (e) {
      // Handle error if needed
    } finally {
      emit(state.copyWith(isLoadingCurrentLocation: false));
    }
  }

  Future<void> selectCenterLocation() async {
    if (!state.isMapReady || _mapController == null) return;

    try {
      final bounds = await _mapController!.getVisibleRegion();
      final center = LatLng(
        (bounds.northeast.latitude + bounds.southwest.latitude) / 2,
        (bounds.northeast.longitude + bounds.southwest.longitude) / 2,
      );
      selectLocation(center);
    } catch (e) {
      // Handle error if needed
    }
  }

  void clearSelection() {
    emit(
      state.copyWith(
        selectedLocation: null,
        markers: <Marker>{},
      ),
    );
  }

  void updateAddress(String address) {
    emit(state.copyWith(address: address));
  }

  @override
  Future<void> close() {
    _mapController?.dispose();
    return super.close();
  }
}
