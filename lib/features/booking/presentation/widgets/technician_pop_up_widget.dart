import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/generated/assets.dart';

class TechnicianPopupWidget extends StatelessWidget {
  const TechnicianPopupWidget({
    required this.onClose,
    required this.onConfirm,
    super.key,
  });

  final VoidCallback onClose;
  final VoidCallback onConfirm;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.black.withValues(alpha: 0.5),
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    width: 40.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(Assets.imagesTechnician),
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  wGap10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'احمد عبد الله',
                        style: CustomTextStyle.kTextStyleF12.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      hGap5,
                      Text(
                        'فني دهانات',
                        style: CustomTextStyle.kTextStyleF12.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey.shade400,
                        ),
                      ),
                      hGap5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'السعر الخدمة بعد المعاينة',
                            style: CustomTextStyle.kTextStyleF12.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.grey.shade400,
                            ),
                          ),
                          wGap30,
                          Text(
                            '40'
                            '\t'
                            '﷼',
                            style: CustomTextStyle.kTextStyleF12.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              hGap20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: onConfirm,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: Text(
                        context.tr.agree,
                        style: CustomTextStyle.kTextStyleF17.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  wGap10,
                  Expanded(
                    child: ElevatedButton(
                      onPressed: onClose,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.grey.shade50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: Text(
                        context.tr.cancel,
                        style: CustomTextStyle.kTextStyleF17.copyWith(
                          color: AppColors.grey.shade500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
