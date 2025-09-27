import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taskora/features/location/presentation/cubits/google_maps/google_maps_cubit.dart';
import 'package:taskora/features/location/presentation/widgets/google_maps/google_maps_content.dart';

class GoogleMapsWidget extends StatelessWidget {
  const GoogleMapsWidget({
    this.onLocationSelected,
    this.initialLocation,
    this.showConfirmButton = true,
    super.key,
  });

  final ValueChanged<LatLng>? onLocationSelected;
  final LatLng? initialLocation;
  final bool showConfirmButton;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoogleMapsCubit(initialLocation: initialLocation),
      child: GoogleMapsContent(
        onLocationSelected: onLocationSelected,
        showConfirmButton: showConfirmButton,
      ),
    );
  }
}
