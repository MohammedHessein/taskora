import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ViewLocationOnMapView extends StatelessWidget {
  const ViewLocationOnMapView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;

    final double lat = args["lat"];
    final double lng = args["lng"];
    final String address = args["address"];
    final target = LatLng(lat, lng);

    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: target,
            zoom: 15,
          ),
          markers: {
            Marker(
              markerId: const MarkerId("selected_location"),
              position: target,
              infoWindow: InfoWindow(title: address),
            ),
          },
        ),
      ),
    );
  }
}
