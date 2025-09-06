import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/utils/dimensions.dart';

class CustomLoadingSkeleton extends StatelessWidget {
  const CustomLoadingSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(
          Dimensions.p16,
          Dimensions.p34,
          Dimensions.p16,
          Dimensions.p34,
        ),
        child: Column(
          children: [
            hGap20,
            _shimmerBox(height: 40.h, width: double.infinity),
            SizedBox(height: 8.h),
            _shimmerBox(height: 40.h, width: double.infinity),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _shimmerBox(height: 40.h)),
                SizedBox(width: 8.w),
                Expanded(child: _shimmerBox(height: 40.h)),
                SizedBox(width: 8.w),
                Expanded(child: _shimmerBox(height: 40.h)),
              ],
            ),
            SizedBox(height: 16.h),
            _shimmerBox(height: 40.h, width: double.infinity),
            SizedBox(height: 32.h),
            Center(
              child: LoadingAnimationWidget.hexagonDots(
                color: AppColors.grey.shade300,
                size: 70.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _shimmerBox({required double height, double? width}) {
    return Shimmer.fromColors(
      baseColor: AppColors.grey.shade300,
      highlightColor: AppColors.grey.shade100,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}
