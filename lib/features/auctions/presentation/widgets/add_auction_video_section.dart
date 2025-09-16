import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class AddAuctionVideoSection extends StatelessWidget {
  const AddAuctionVideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr.add_video,
          style: CustomTextStyle.kTextStyleF13.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.grey.shade400,
          ),
        ),
        hGap15,
        Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: AppColors.grey.shade200,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
