import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    required this.stream,
    required this.condition,
    required this.label,
    required this.onPressed,
    super.key,
    this.isUpperCase = false,
    this.borderRadius,
    this.fgColor,
    this.bgColor,
    this.borderColor,
    this.textStyle,
  });
  final Stream stream;
  final bool condition;
  final String label;
  final VoidCallback onPressed;
  final bool isUpperCase;
  final double? borderRadius;
  final Color? bgColor;
  final Color? fgColor;
  final Color? borderColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder: (context, snapshot) {
        return ConditionalBuilder(
          condition: condition,
          builder: (context) => ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: bgColor ?? AppColors.onPrimary,
              foregroundColor: fgColor ?? Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
                side: BorderSide(
                  color: borderColor ?? Colors.transparent,
                  width: 1.w,
                ),
              ),
            ),
            onPressed: snapshot.hasData ? onPressed : null,
            child: Text(
              isUpperCase ? label.toUpperCase() : label,
              style: textStyle ?? CustomTextStyle.kBtnTextStyle,
              // textAlign: TextAlign.center,
            ),
          ),
          fallback: (context) => const Center(
            child: CircularProgressIndicator(color: AppColors.primaryBlue),
          ),
        );
      },
    );
  }
}
