import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class ListingTypeNumberSection extends StatelessWidget {
  const ListingTypeNumberSection({
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
          style: CustomTextStyle.kTextStyleF16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        wGap10,
        Text(
          '#2568',
          style: CustomTextStyle.kTextStyleF17.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
