import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    required this.title,
    required this.onTap,
    super.key,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: Dimensions.p12.h),
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.p16.w,
          vertical: Dimensions.p16.h,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: title == context.tr.logout
                ? AppColors.error
                : AppColors.grey.shade400,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Text(
          title,
          style: CustomTextStyle.kTextStyleF14.copyWith(
            color: title == context.tr.logout
                ? AppColors.error
                : AppColors.grey.shade300,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
