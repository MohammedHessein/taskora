import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/features/location/presentation/cubits/google_maps/google_maps_cubit.dart';

class CenterLocationButton extends StatelessWidget {
  const CenterLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 80.h,
      right: 15.w,
      child: FloatingActionButton(
        heroTag: "select_center",
        mini: true,
        backgroundColor: AppColors.primary,
        onPressed: () {
          context.read<GoogleMapsCubit>().selectCenterLocation();
        },
        child: Icon(
          Icons.my_location,
          color: AppColors.white,
          size: 20.sp,
        ),
      ),
    );
  }
}
