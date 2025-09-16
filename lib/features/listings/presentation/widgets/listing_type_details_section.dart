import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/generated/assets.dart';

class ListingTypeDetailsSection extends StatelessWidget {
  const ListingTypeDetailsSection({
    required this.listingType,
    super.key,
  });
  final ListingType listingType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Row(
              children: [
                Text(
                  listingType == ListingType.advertisement
                      ? context.tr.ad_details
                      : context.tr.auction_details,
                  style: CustomTextStyle.kTextStyleF16.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                wGap5,
                if (listingType == ListingType.auction)
                  const Text('')
                else
                  Text(
                    context.tr.for_service_product,
                    style: CustomTextStyle.kTextStyleF10.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  '1200',
                  style: CustomTextStyle.kTextStyleF16.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryBlue,
                  ),
                ),
                wGap10,
                SvgPicture.asset(
                  Assets.svgsCurrency,
                  colorFilter: const ColorFilter.mode(
                    AppColors.primaryBlue,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
            hGap15,
          ],
        ),
        hGap15,
        if (listingType == ListingType.advertisement)
          SizedBox(
            height: 50.h,
            width: 50.w,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                context.tr.purpose_rent,
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
            ),
          )
        else
          const SizedBox.shrink(),
      ],
    );
  }
}
