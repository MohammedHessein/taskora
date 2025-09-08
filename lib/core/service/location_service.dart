import 'package:geocoding/geocoding.dart' hide Location;
import 'package:location/location.dart';

class LocationService {
  Location location = Location();

  Future<void> checkAndRequestLocationService() async {
    var isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
      if (!isServiceEnabled) {
        throw LocationServiceException();
      }
    }
  }

  Future<void> checkAndRequestLocationPermission() async {
    var permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.deniedForever) {
      throw LocationPermissionException();
    }
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();
      if (permissionStatus != PermissionStatus.granted) {
        throw LocationPermissionException();
      }
    }
  }

  Future<LocationData> getLocation() async {
    await checkAndRequestLocationService();
    await checkAndRequestLocationPermission();
    return location.getLocation();
  }

  Future<String> getReadableLocation() async {
    final locData = await getLocation();
    final placeMarks = await placemarkFromCoordinates(
      locData.latitude!,
      locData.longitude!,
    );

    if (placeMarks.isNotEmpty) {
      final place = placeMarks.first;
      return "${place.postalCode}، ${place.country}";
    }
    return "Unknown location";
  }
}

class LocationServiceException implements Exception {}

class LocationPermissionException implements Exception {}
