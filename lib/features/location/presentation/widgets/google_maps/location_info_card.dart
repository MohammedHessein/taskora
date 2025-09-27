import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/location/presentation/cubits/google_maps/google_maps_cubit.dart';
import 'package:taskora/features/location/presentation/cubits/google_maps/google_maps_state.dart';

class LocationInfoCard extends StatelessWidget {
  const LocationInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoogleMapsCubit, GoogleMapsState>(
      builder: (context, state) {
        if (state.selectedLocation == null) return const SizedBox.shrink();

        return Positioned(
          top: 10.h,
          left: 10.w,
          right: 10.w,
          child: Container(
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: AppColors.primary,
                  size: 16.r,
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    '${state.selectedLocation!.latitude.toStringAsFixed(4)}, ${state.selectedLocation!.longitude.toStringAsFixed(4)}',
                    style: CustomTextStyle.kTextStyleF12.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<GoogleMapsCubit>().clearSelection();
                  },
                  child: Icon(
                    Icons.close,
                    color: AppColors.grey,
                    size: 16.r,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
