import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/packages/data/models/package_model.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({required this.package, super.key});

  final PackageModel package;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      margin: EdgeInsets.all(8.r),
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.grey.shade200,
        border: Border.all(color: AppColors.primaryBlue, width: 1.2),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Text(
            package.title,
            style: CustomTextStyle.kTextStyleF16.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primaryBlue,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          hGap35,
          Text(
            "SAR ${package.oldPrice.toStringAsFixed(0)}",
            style: CustomTextStyle.kTextStyleF16.copyWith(
              decoration: TextDecoration.lineThrough,
              color: AppColors.primaryBlue,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          hGap15,
          Text(
            "SAR ${package.newPrice.toStringAsFixed(0)}",
            style: CustomTextStyle.kTextStyleF12.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primaryBlue,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          hGap15,
          Text(
            package.description,
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyle.kTextStyleF12.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.primaryBlue,
            ),
          ),
          hGap15,
          Text(
            package.extraNote,
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyle.kTextStyleF12.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.primaryBlue,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Text(context.tr.subscribe),
          ),
        ],
      ),
    );
  }
}
