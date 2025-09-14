import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/generated/assets.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.grey.shade100,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.tr.order_details,
            style: CustomTextStyle.kTextStyleF12.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          hGap15,
          Row(
            children: [
              SvgPicture.asset(
                Assets.svgsLocation,
                colorFilter: ColorFilter.mode(
                  AppColors.grey.shade400,
                  BlendMode.srcIn,
                ),
              ),
              wGap10,
              Flexible(
                child: Text(
                  maxLines: 2,
                  context.tr.location_example,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyle.kTextStyleF12.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey.shade400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
