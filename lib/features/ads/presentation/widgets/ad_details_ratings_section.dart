import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/ads/data/models/review_model.dart';
import 'package:taskora/features/ads/presentation/widgets/rating_summary_item.dart';
import 'package:taskora/features/ads/presentation/widgets/review_item.dart';
import 'package:taskora/features/main/home/presentation/widgets/carousel_service_widget.dart';

class AdDetailsRatingsSection extends StatelessWidget {
  const AdDetailsRatingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr.reviews,
          style: CustomTextStyle.kTextStyleF18.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.primaryBlue,
          ),
        ),
        hGap15,
        Text(
          context.tr.product_rating,
          style: CustomTextStyle.kTextStyleF14.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        hGap20,
        const RatingSummaryItem(),
        hGap20,
        ...dummyReviews.map(
          (review) => Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: ReviewItem(review: review),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: AppColors.white,
            foregroundColor: AppColors.primaryBlue,
            side: const BorderSide(color: AppColors.primaryBlue),
          ),
          onPressed: () {},
          child: Text(context.tr.show_all),
        ),
        hGap20,
        CustomFormField(
          hint: context.tr.comment,
          stream: const Stream.empty(),
          maxLines: 4,
          onChanged: (value) {},
          trailingButton: SizedBox(
            width: 50.w,
            height: 40.h,
            child: Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  context.tr.review,
                  style: CustomTextStyle.kTextStyleF10.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        hGap25,
        Text(
          context.tr.merchant_rating,
          style: CustomTextStyle.kTextStyleF14.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        hGap25,
        const RatingSummaryItem(),
        hGap25,
        CustomFormField(
          hint: context.tr.comment,
          stream: const Stream.empty(),
          maxLines: 4,
          onChanged: (value) {},
          trailingButton: SizedBox(
            width: 60.w,
            height: 40.h,
            child: Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  context.tr.send,
                  style: CustomTextStyle.kTextStyleF10.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        hGap25,
        const CarouselServiceWidget(),
        hGap25,
      ],
    );
  }
}
