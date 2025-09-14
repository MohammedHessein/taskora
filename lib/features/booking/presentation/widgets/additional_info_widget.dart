import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/generated/assets.dart';

class AdditionalInfoWidget extends StatelessWidget {
  const AdditionalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.grey.shade50),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                Assets.svgsAlert,
              ),
              wGap10,
              Flexible(
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  context
                      .tr
                      .The_final_price_for_services_will_be_confirmed_after_the_visit_and_completion_of_the_inspection,
                  textAlign: TextAlign.start,
                  style: CustomTextStyle.kTextStyleF12.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          hGap25,
        ],
      ),
    );
  }
}
