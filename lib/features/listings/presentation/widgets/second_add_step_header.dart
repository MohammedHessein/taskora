import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class SecondAddStepHeader extends StatelessWidget {
  const SecondAddStepHeader({
    required this.listingType,
    super.key,
  });
  final ListingType listingType;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: AppColors.grey.shade100,
        child: Center(
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.primaryBlue,
            size: 20.sp,
          ),
        ),
      ),
      title: Text(
        listingType == ListingType.auction
            ? context.tr.auction_details
            : context.tr.ad_details,
        style: CustomTextStyle.kTextStyleF16.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.primaryBlue,
        ),
      ),
      trailing: Text(
        context.tr.second_step,
        style: CustomTextStyle.kTextStyleF12.copyWith(
          fontWeight: FontWeight.w400,
          color: AppColors.grey,
        ),
      ),
    );
  }
}
