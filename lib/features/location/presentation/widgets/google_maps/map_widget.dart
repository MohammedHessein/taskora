import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taskora/core/constants/maps_constants.dart';
import 'package:taskora/features/location/presentation/cubits/google_maps/google_maps_cubit.dart';
import 'package:taskora/features/location/presentation/cubits/google_maps/google_maps_state.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoogleMapsCubit, GoogleMapsState>(
      builder: (context, state) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: GoogleMap(
            markers: state.markers,
            onMapCreated: (controller) {
              context.read<GoogleMapsCubit>().onMapCreated(controller);
            },
            zoomControlsEnabled: false,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            initialCameraPosition: MapsConstants.ksaPosition,
            onTap: (latLng) {
              context.read<GoogleMapsCubit>().selectLocation(latLng);
            },
            gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
              const Factory<OneSequenceGestureRecognizer>(
                EagerGestureRecognizer.new,
              ),
            }.toSet(),
          ),
        );
      },
    );
  }
}
