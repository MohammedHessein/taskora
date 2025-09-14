import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/generated/assets.dart';

class ThanksForYourTimeDialog extends StatelessWidget {
  const ThanksForYourTimeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = ScreenUtil().screenHeight;
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: screenHeight / 7,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.tr.thanks_for_time,
                style: CustomTextStyle.kTextStyleF16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryBlue,
                ),
              ),
              hGap20,
              Center(
                child: CircleAvatar(
                  backgroundColor: AppColors.grey.shade50,
                  radius: 100.r,
                  child: Padding(
                    padding: EdgeInsets.all(30.r),
                    child: SvgPicture.asset(
                      Assets.svgsCelebrate,
                    ),
                  ),
                ),
              ),
              hGap30,
              ElevatedButton(
                onPressed: () => context.pushNamedAndRemoveUntil(
                  Routes.navBar,
                  predicate: (route) => false,
                ),
                child: Text(context.tr.come_back),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
