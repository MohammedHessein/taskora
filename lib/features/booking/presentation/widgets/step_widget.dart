import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/generated/assets.dart';

Widget buildStepWidget({
  required BuildContext context,
  required int stepIndex,
  required int currentStep,
  required String title,
}) {
  final isDone = currentStep > stepIndex;
  final isCurrent = currentStep == stepIndex;

  return Column(
    children: [
      SizedBox(
        width: 32.h,
        height: 32.w,
        child: isDone
            ? SvgPicture.asset(Assets.svgsCheck)
            : isCurrent
            ? Container(
                margin: EdgeInsets.all(6.r),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryBlue,
                ),
              )
            : null,
      ),
      hGap10,
      Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: CustomTextStyle.kTextStyleF11.copyWith(
          fontWeight: isCurrent ? FontWeight.w600 : FontWeight.w500,
          color: isDone || isCurrent
              ? AppColors.black
              : AppColors.grey.shade600,
        ),
      ),
    ],
  );
}
