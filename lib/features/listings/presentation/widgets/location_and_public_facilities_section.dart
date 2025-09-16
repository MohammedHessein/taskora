import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/generated/assets.dart';

class LocationAndPublicFacilitiesSection extends StatelessWidget {
  const LocationAndPublicFacilitiesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr.location_and_public_facilities,
          style: CustomTextStyle.kTextStyleF16.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        hGap15,
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.grey.shade100,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: SvgPicture.asset(Assets.svgsLocation),
            ),
            wGap10,
            Flexible(
              child: Text(
                context.tr.location_ex,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.kTextStyleF14.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        hGap15,
        Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.grey.shade100,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                Assets.svgsLocation,
              ),
              wGap10,
              Expanded(
                child: Text(
                  context.tr.it_is_2_5_km2_away_from_your_location,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyle.kTextStyleF14.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
