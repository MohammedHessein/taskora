import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class AdImagesSection extends StatelessWidget {
  const AdImagesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            separatorBuilder: (context, index) => wGap15,
            itemBuilder: (context, index) {
              if (index == 3) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 70.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: AppColors.primaryBlue,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                );
              }
              return Container(
                width: 70.w,
                height: 70.h,
                decoration: BoxDecoration(
                  color: AppColors.grey.shade200,
                  borderRadius: BorderRadius.circular(12.r),
                ),
              );
            },
          ),
        ),
        hGap15,
        Text(
          context.tr.ad_image_conditions,
          style: CustomTextStyle.kTextStyleF12.copyWith(
            color: AppColors.grey.shade300,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
