import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/generated/assets.dart';

class RatingSummaryItem extends StatelessWidget {
  const RatingSummaryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.primaryBlue,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    padding: EdgeInsets.all(6.r),
                    child: const Icon(
                      Icons.star,
                      color: AppColors.goldYellow,
                      size: 20,
                    ),
                  ),
                  wGap10,
                  Text(
                    "4.9",
                    style: CustomTextStyle.kTextStyleF18.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              hGap5,
              Text(
                "112 ${context.tr.reviews}",
                style: CustomTextStyle.kTextStyleF9.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    color: index < 4
                        ? AppColors.goldenYellow
                        : AppColors.grey.shade400,
                    size: 20.sp,
                  ),
                ),
              ),
              hGap10,
              Row(
                children: [
                  const CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage(Assets.imagesReviewImage),
                  ),
                  wGap0,
                  const CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage(Assets.imagesReviewImage),
                  ),
                  wGap0,
                  const CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage(Assets.imagesReviewImage),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
