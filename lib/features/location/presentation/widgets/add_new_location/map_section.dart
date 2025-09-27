import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskora/features/location/presentation/cubits/add_location/add_location_cubit.dart';
import 'package:taskora/features/location/presentation/widgets/google_maps/google_maps_widget.dart';

class MapSection extends StatelessWidget {
  const MapSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GoogleMapsWidget(
      onLocationSelected: (latLng) {
        context.read<AddLocationCubit>().selectLocation(latLng);
      },
    );
  }
}
