import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class ListingTypeLayoutButton extends StatelessWidget {
  const ListingTypeLayoutButton({
    required this.text,
    required this.selected,
    super.key,
  });
  final String text;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.r),
      margin: REdgeInsetsDirectional.only(start: 16.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: selected ? AppColors.white : AppColors.primaryBlue,
        ),
        color: selected ? AppColors.primaryBlue : AppColors.white,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Text(
        text,
        style: CustomTextStyle.kTextStyleF10.copyWith(
          fontWeight: FontWeight.w500,
          color: selected ? AppColors.white : AppColors.primaryBlue,
        ),
      ),
    );
  }
}
