import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:taskora/core/theme/app_colors.dart';

class StateLoadingWidget extends StatelessWidget {
  const StateLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Gap(30.h),
        Center(
          child: SizedBox(
            height: 100.h,
            width: 100.w,
            child: const CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryBlue),
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
