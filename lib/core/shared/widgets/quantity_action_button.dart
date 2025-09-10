import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/theme/app_colors.dart';

Widget buildQuantityButton({
  required IconData icon,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 30.w,
      height: 28.w,
      decoration: BoxDecoration(
        color: AppColors.primaryBlue,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Icon(icon, size: 18.sp, color: AppColors.white),
    ),
  );
}
