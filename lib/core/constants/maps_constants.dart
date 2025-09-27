import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MapsConstants {
  static const String mapsAndroidApiKey =
      'AIzaSyC1KqONX7oy-OjCmrkf6ncdJkyxUD-zSYs';
  static const String mapsIosApiKey = 'AIzaSyD_peaKgWu8l3OekDTZDI_W1ao58s3fZr4';
  static const CameraPosition ksaPosition = CameraPosition(
    target: LatLng(23.886292, 45.081139),
    zoom: 5,
  );
  static const LatLng ksaLatLng = LatLng(23.886292, 45.081139);
}
