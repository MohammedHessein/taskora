import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class ListingTypeButton extends StatelessWidget {
  const ListingTypeButton({
    required this.label,
    required this.type,
    required this.selectedType,
    required this.onTap,
    super.key,
  });
  final String label;
  final ListingType type;
  final ListingType selectedType;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isSelected = type == selectedType;
    return SizedBox(
      width: 100.w,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? AppColors.primaryBlue : AppColors.white,
          side: BorderSide(
            color: isSelected ? AppColors.primaryBlue : AppColors.grey.shade200,
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: CustomTextStyle.kTextStyleF14.copyWith(
            fontWeight: FontWeight.w500,
            color: isSelected ? AppColors.white : AppColors.grey.shade300,
          ),
        ),
      ),
    );
  }
}
