import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class LocationsTitle extends StatelessWidget {
  const LocationsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.tr.saved_locations,
      style: CustomTextStyle.kTextStyleF24.copyWith(
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
    );
  }
}
