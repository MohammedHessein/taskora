import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class ListingTypeNumber extends StatelessWidget {
  const ListingTypeNumber({
    required this.listingType,
    super.key,
  });

  final ListingType listingType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          listingType == ListingType.advertisement
              ? context.tr.ad_number
              : context.tr.auction_number,
          style: CustomTextStyle.kTextStyleF17.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.grey.shade400,
          ),
        ),
        const Spacer(),
        Text(
          '#123456',
          style: CustomTextStyle.kTextStyleF17.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.grey.shade400,
          ),
        ),
      ],
    );
  }
}
