import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:taskora/core/exceptions/base/failure_class.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';

class StateErrorWidget extends StatelessWidget {
  const StateErrorWidget({required this.failure, super.key});
  final Failure failure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.p30),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(Dimensions.p16),
          decoration: BoxDecoration(
            color: AppColors.errorContainer,
            borderRadius: BorderRadius.circular(Dimensions.r25),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error,
                  color: context.customColors.errorColor,
                  size: 60,
                ),
                hGap100,
                Text(
                  failure.code.toString(),
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.kTextStyleF30.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gap(10.h),
                Text(
                  failure.message,
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.kTextStyleF16.copyWith(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
