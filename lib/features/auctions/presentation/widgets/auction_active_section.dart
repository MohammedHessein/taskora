import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/auctions/data/models/auction_model.dart';

class AuctionActiveSection extends StatelessWidget {
  const AuctionActiveSection({required this.auction, super.key});

  final AuctionModel auction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.grey.shade100,
            borderRadius: BorderRadius.circular(8.r),
          ),
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.tr.currently,
                style: CustomTextStyle.kTextStyleF16.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              hGap10,
              Text(
                "1200 ريال",
                style: CustomTextStyle.kTextStyleF14.copyWith(
                  color: AppColors.black,
                ),
              ),
              hGap10,
              Text(
                "${context.tr.highest_bidder}: \t${auction.highestBidName}",
                style: CustomTextStyle.kTextStyleF14.copyWith(
                  color: AppColors.black,
                ),
              ),
            ],
          ),
        ),
        hGap15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
                decoration: BoxDecoration(
                  color: AppColors.grey.shade100,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.tr.lowest_bid_for_the_advertiser,
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    hGap10,
                    Text(
                      auction.priceAfterDiscount,
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        color: AppColors.primaryBlue,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            wGap10,
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
            color: AppColors.grey.shade100,
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
                "${auction.countdown}",
                style: CustomTextStyle.kTextStyleF14.copyWith(
                  color: AppColors.error,
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
