import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationData {
  const LocationData({
    required this.lat,
    required this.lng,
    required this.address,
  });

  factory LocationData.fromArgs(Map<String, dynamic> args) {
    return LocationData(
      lat: args["lat"]?.toDouble() ?? 0.0,
      lng: args["lng"]?.toDouble() ?? 0.0,
      address: args["address"]?.toString() ?? '',
    );
  }

  final double lat;
  final double lng;
  final String address;

  LatLng get position => LatLng(lat, lng);
}
