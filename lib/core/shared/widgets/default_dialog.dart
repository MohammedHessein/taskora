import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class DefaultAlertDialog extends StatelessWidget {
  const DefaultAlertDialog({
    required this.btn1,
    required this.btn2,
    required this.title,
    super.key,
    this.onPressed1,
    this.onPressed2,
  });
  final String title;
  final String btn1;
  final String btn2;
  final VoidCallback? onPressed1;
  final VoidCallback? onPressed2;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10.r),
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 10.w),
      backgroundColor: context.customColors.secondaryWhite,
      content: Text(
        context.tr.are_you_sure_you_want_to_exit,
        style: CustomTextStyle.kTextStyleF14.copyWith(
          color: context.customColors.secondaryBlack,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: ElevatedButton(
                onPressed: onPressed1,
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side: const BorderSide(color: AppColors.error),
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.error,
                ),
                child: Text(
                  btn1,
                  style: CustomTextStyle.kTextStyleF14.copyWith(
                    color: AppColors.error,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            wGap10,
            Flexible(
              child: ElevatedButton(
                onPressed: onPressed2,
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side: const BorderSide(color: AppColors.successGreen),
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.successGreen,
                ),
                child: Text(
                  btn2,
                  style: CustomTextStyle.kTextStyleF14.copyWith(
                    color: AppColors.successGreen,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
