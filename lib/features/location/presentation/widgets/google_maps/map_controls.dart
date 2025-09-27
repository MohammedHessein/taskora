import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taskora/features/location/presentation/widgets/google_maps/confirm_location_button.dart';
import 'package:taskora/features/location/presentation/widgets/google_maps/current_location_button.dart';

class MapControls extends StatelessWidget {
  const MapControls({
    required this.showConfirmButton,
    super.key,
    this.onLocationSelected,
  });

  final ValueChanged<LatLng>? onLocationSelected;
  final bool showConfirmButton;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10.h,
      left: 10.w,
      right: 10.w,
      child: Row(
        children: [
          const CurrentLocationButton(),
          const Spacer(),
          if (showConfirmButton)
            ConfirmLocationButton(onLocationSelected: onLocationSelected),
        ],
      ),
    );
  }
}
