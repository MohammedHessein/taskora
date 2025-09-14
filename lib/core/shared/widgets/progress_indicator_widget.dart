import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:taskora/core/theme/app_colors.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 70.sp,
        height: 70.sp,
        child: LoadingAnimationWidget.hexagonDots(
          color: AppColors.primaryBlue,
          size: 40.sp,
        ),
      ),
    );
  }
}
