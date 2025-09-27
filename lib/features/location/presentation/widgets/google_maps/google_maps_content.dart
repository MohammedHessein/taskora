import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taskora/features/location/presentation/widgets/google_maps/center_location_button.dart';
import 'package:taskora/features/location/presentation/widgets/google_maps/location_info_card.dart';
import 'package:taskora/features/location/presentation/widgets/google_maps/map_controls.dart';
import 'package:taskora/features/location/presentation/widgets/google_maps/map_widget.dart';

class GoogleMapsContent extends StatelessWidget {
  const GoogleMapsContent({
    required this.showConfirmButton,
    super.key,
    this.onLocationSelected,
  });

  final ValueChanged<LatLng>? onLocationSelected;
  final bool showConfirmButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 351.h,
      width: double.infinity,
      child: Stack(
        children: [
          const MapWidget(),
          const LocationInfoCard(),
          MapControls(
            onLocationSelected: onLocationSelected,
            showConfirmButton: showConfirmButton,
          ),
          const CenterLocationButton(),
        ],
      ),
    );
  }
}
