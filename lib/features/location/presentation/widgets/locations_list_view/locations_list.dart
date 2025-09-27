import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/features/location/presentation/cubits/location_list/location_list_cubit.dart';
import 'package:taskora/features/location/presentation/cubits/location_list/location_state.dart';
import 'package:taskora/features/location/presentation/widgets/locations_list_view/empty_locations.dart';
import 'package:taskora/features/location/presentation/widgets/locations_list_view/location_item.dart';
import 'package:toastification/toastification.dart';

class LocationsList extends StatelessWidget {
  const LocationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationListCubit, LocationState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          context.defaultSnackBar(
            title: context.tr.error,
            description: state.errorMessage!,
            type: ToastificationType.error,
          );
          context.read<LocationListCubit>().clearError();
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.savedLocations.isEmpty) {
          return const EmptyLocationsWidget();
        }

        return Column(
          children: state.savedLocations.asMap().entries.map((entry) {
            final index = entry.key;
            final location = entry.value;
            return LocationItem(
              location: location,
              index: index,
              isSelected: state.selectedIndex == index,
            );
          }).toList(),
        );
      },
    );
  }
}
