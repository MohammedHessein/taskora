import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/location/presentation/cubits/google_maps/google_maps_cubit.dart';
import 'package:taskora/features/location/presentation/cubits/google_maps/google_maps_state.dart';
import 'package:toastification/toastification.dart';

class ConfirmLocationButton extends StatelessWidget {
  const ConfirmLocationButton({super.key, this.onLocationSelected});

  final ValueChanged<LatLng>? onLocationSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoogleMapsCubit, GoogleMapsState>(
      builder: (context, state) {
        if (state.selectedLocation == null) return const SizedBox.shrink();

        return FloatingActionButton.extended(
          heroTag: "confirm_location",
          icon: const Icon(Icons.check, color: AppColors.white),
          label: Text(
            context.tr.confirm_location,
            style: CustomTextStyle.kTextStyleF12.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () {
            onLocationSelected?.call(state.selectedLocation!);

            context.defaultSnackBar(
              title: context.tr.success,
              description: context.tr.location_confirmed,
              type: ToastificationType.success,
            );
          },
          backgroundColor: AppColors.primary,
        );
      },
    );
  }
}
