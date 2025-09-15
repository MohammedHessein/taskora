import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class ListingTypePurpose extends StatelessWidget {
  const ListingTypePurpose({
    required this.listingType,
    super.key,
  });
  final ListingType listingType;

  @override
  Widget build(BuildContext context) {
    return Text(
      listingType == ListingType.advertisement
          ? context.tr.ad_purpose
          : context.tr.auction_purpose,
      style: CustomTextStyle.kTextStyleF12.copyWith(
        fontWeight: FontWeight.w400,
        color: AppColors.grey.shade300,
      ),
    );
  }
}
