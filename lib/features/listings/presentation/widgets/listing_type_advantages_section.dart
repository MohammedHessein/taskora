import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';

class ListingTypeAdvantagesSection extends StatelessWidget {
  const ListingTypeAdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimensions.p16,
        vertical: Dimensions.p16,
      ),
      decoration: BoxDecoration(
        color: AppColors.grey.shade100,
        borderRadius: BorderRadius.circular(Dimensions.p16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.tr.advantages,
            style: CustomTextStyle.kTextStyleF16.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          hGap15,
          Text(
            context
                .tr
                .here_are_placed_the_advantages_of_the_pre_selected_product_towards_the_customer,
            style: CustomTextStyle.kTextStyleF14.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          hGap15,
          Text(
            context.tr.about_the_product,
            style: CustomTextStyle.kTextStyleF16.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          hGap15,
          ...List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: Dimensions.p8),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.secondaryBlack.shade600,
                    radius: 3.r,
                  ),
                  wGap10,
                  Text(
                    context.tr.product_details,
                    style: CustomTextStyle.kTextStyleF14.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
