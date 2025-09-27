import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/location/presentation/cubits/google_maps/google_maps_cubit.dart';
import 'package:taskora/features/location/presentation/cubits/google_maps/google_maps_state.dart';
import 'package:taskora/generated/assets.dart';
import 'package:toastification/toastification.dart';

class CurrentLocationButton extends StatelessWidget {
  const CurrentLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GoogleMapsCubit, GoogleMapsState>(
      listener: (context, state) {
        // Handle errors from location service here if needed
      },
      builder: (context, state) {
        return FloatingActionButton.extended(
          heroTag: "current_location",
          icon: state.isLoadingCurrentLocation
              ? SizedBox(
                  width: 16.r,
                  height: 16.r,
                  child: const CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
                  ),
                )
              : SvgPicture.asset(
                  Assets.svgsLocation,
                  colorFilter: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
          label: Text(
            context.tr.current_location,
            style: CustomTextStyle.kTextStyleF12.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: state.isLoadingCurrentLocation
              ? null
              : () async {
                  await context.read<GoogleMapsCubit>().selectCurrentLocation();
                  final currentState = context.read<GoogleMapsCubit>().state;
                  if (!currentState.isLoadingCurrentLocation &&
                      currentState.selectedLocation == null &&
                      context.mounted) {
                    context.defaultSnackBar(
                      title: context.tr.error,
                      description: context.tr.failed_to_select_location,
                      type: ToastificationType.error,
                    );
                  }
                },
          backgroundColor: AppColors.primaryBlue,
        );
      },
    );
  }
}
