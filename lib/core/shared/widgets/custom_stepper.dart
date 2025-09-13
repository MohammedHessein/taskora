import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/theme/app_colors.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({
    required this.totalSteps,
    required this.currentStep,
    super.key,
  });
  final int totalSteps;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalSteps, (index) {
        final isActive = index == currentStep;
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          width: 44.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: isActive ? AppColors.primaryBlue : AppColors.grey.shade200,
            borderRadius: BorderRadius.circular(20.r),
          ),
        );
      }),
    );
  }
}
