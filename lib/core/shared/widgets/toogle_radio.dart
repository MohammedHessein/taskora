import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class ToggleIcon extends StatelessWidget {
  const ToggleIcon({
    required this.selected,
    required this.onTap,
    required this.label,
    super.key,
  });
  final bool selected;
  final VoidCallback onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            selected
                ? Icons.radio_button_checked
                : Icons.radio_button_unchecked,
            color: selected
                ? context.customColors.primaryBlue
                : context.customColors.secondaryBlack.shade500,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: CustomTextStyle.kTextStyleF12.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.grey.shade300,
            ),
          ),
        ],
      ),
    );
  }
}
