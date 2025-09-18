import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/auctions/data/models/auction_model.dart';
import 'package:taskora/generated/assets.dart';

class AuctionEndedSection extends StatelessWidget {
  const AuctionEndedSection({required this.auction, super.key});

  final AuctionModel auction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey.shade300),
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8.r),
          ),
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.tr.winner,
                style: CustomTextStyle.kTextStyleF16.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              hGap10,
              Text(
                auction.highestBidName,
                style: CustomTextStyle.kTextStyleF14.copyWith(
                  color: AppColors.black,
                ),
              ),
              hGap10,
              Row(
                children: [
                  Text(
                    auction.priceAfterDiscount.substring(2),
                    style: CustomTextStyle.kTextStyleF14.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  wGap10,
                  SvgPicture.asset(
                    Assets.svgsCurrency,
                    height: 20.h,
                    width: 20.w,
                    colorFilter: const ColorFilter.mode(
                      AppColors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        hGap15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(color: AppColors.grey.shade300),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      auction.status,
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    hGap10,
                    Row(
                      children: [
                        Text(
                          auction.priceAfterDiscount.substring(2),
                          style: CustomTextStyle.kTextStyleF14.copyWith(
                            color: AppColors.primaryBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        wGap10,
                        SvgPicture.asset(
                          Assets.svgsCurrency,
                          height: 20.h,
                          width: 20.w,
                          colorFilter: const ColorFilter.mode(
                            AppColors.grey,
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            wGap15,
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(context.tr.buy_now),
              ),
            ),
          ],
        ),
        hGap15,
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.grey.shade300),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.tr.countdown_timer,
                style: CustomTextStyle.kTextStyleF16.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                context.tr.finished,
                style: CustomTextStyle.kTextStyleF14.copyWith(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        hGap20,
      ],
    );
  }
}
