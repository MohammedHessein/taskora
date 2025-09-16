import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/ads/data/models/review_model.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    required this.review,
    super.key,
  });
  final ReviewModel review;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: AppColors.grey.shade100,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(
              5,
              (index) => Icon(
                Icons.star,
                color: index < review.rating
                    ? AppColors.brightYellow
                    : AppColors.grey.shade400,
                size: 20.sp,
              ),
            ),
          ),
          hGap10,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                review.name,
                style: CustomTextStyle.kTextStyleF16.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              wGap10,
              CircleAvatar(
                radius: 18.sp,
                backgroundImage: NetworkImage(review.imageUrl),
              ),
            ],
          ),
          hGap10,
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              review.reviewText,
              textAlign: TextAlign.right,
              style: CustomTextStyle.kTextStyleF14,
            ),
          ),
          hGap10,
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              review.daysAgo,
              style: CustomTextStyle.kTextStyleF12.copyWith(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
