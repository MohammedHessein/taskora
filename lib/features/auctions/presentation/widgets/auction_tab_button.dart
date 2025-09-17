import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class AuctionTabButton extends StatelessWidget {
  const AuctionTabButton({
    required this.tab,
    required this.selectedTab,
    required this.text,
    required this.onTap,
    super.key,
  });
  final AuctionTabs tab;
  final AuctionTabs selectedTab;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final selected = tab == selectedTab;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: selected ? AppColors.primaryBlue : AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: selected ? AppColors.primaryBlue : AppColors.grey.shade300,
          ),
        ),
        child: Text(
          text,
          style: CustomTextStyle.kTextStyleF12.copyWith(
            fontWeight: FontWeight.w600,
            color: selected ? AppColors.white : AppColors.primaryBlue,
          ),
        ),
      ),
    );
  }
}
