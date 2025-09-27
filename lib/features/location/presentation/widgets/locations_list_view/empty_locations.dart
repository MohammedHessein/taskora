import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class EmptyLocationsWidget extends StatelessWidget {
  const EmptyLocationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            Icons.location_off,
            size: 64.r,
            color: AppColors.grey,
          ),
          hGap15,
          Text(
            context.tr.no_saved_locations,
            style: CustomTextStyle.kTextStyleF18.copyWith(
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
