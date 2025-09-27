import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/auctions/data/models/auction_model.dart';
import 'package:taskora/generated/assets.dart';

class AuctionListItem extends StatefulWidget {
  const AuctionListItem({required this.auction, super.key});

  final AuctionModel auction;

  @override
  State<AuctionListItem> createState() => _AuctionListItemState();
}

class _AuctionListItemState extends State<AuctionListItem>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _formatCountdown(Duration countdown) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final twoDigitMinutes = twoDigits(countdown.inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(countdown.inSeconds.remainder(60));
    return "${twoDigits(countdown.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          Routes.auctionDetails,
          arguments: widget.auction,
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        decoration: BoxDecoration(
          color: AppColors.primaryBlue.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: 150.w,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          bottomLeft: Radius.circular(12.r),
                        ),
                        child: Image.asset(
                          widget.auction.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8.h,
                      right: 8.w,
                      child: AnimatedBuilder(
                        animation: _animation,
                        builder: (context, child) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 4.h,
                            ),
                            decoration: BoxDecoration(
                              color: widget.auction.status == "جارى"
                                  ? AppColors.primary
                                  : AppColors.primaryBlue,
                              borderRadius: BorderRadius.circular(8.r),
                              border: widget.auction.status == "جارى"
                                  ? Border.all(
                                      color: AppColors.primaryBlue,
                                    )
                                  : null,
                            ),
                            child: Text(
                              widget.auction.status,
                              style: CustomTextStyle.kTextStyleF9.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.auction.title,
                              style: CustomTextStyle.kTextStyleF14.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              widget.auction.isFavourite =
                                  !widget.auction.isFavourite;
                              setState(() {});
                            },
                            child: SvgPicture.asset(
                              widget.auction.isFavourite
                                  ? Assets.svgsActiveHeart
                                  : Assets.svgsInactiveHeart,
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        widget.auction.description,
                        style: CustomTextStyle.kTextStyleF12.copyWith(
                          color: AppColors.grey.shade600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Text(
                            widget.auction.priceBeforeDiscount,
                            style: CustomTextStyle.kTextStyleF9.copyWith(
                              color: AppColors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            widget.auction.priceAfterDiscount,
                            style: CustomTextStyle.kTextStyleF12.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryBlue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Text(
                            context.tr.highest_bidder,
                            style: CustomTextStyle.kTextStyleF10.copyWith(
                              color: AppColors.grey,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            widget.auction.highestBidName,
                            style: CustomTextStyle.kTextStyleF10.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryBlue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              context.tr.descending_auction_fairness,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyle.kTextStyleF9.copyWith(
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            _formatCountdown(widget.auction.countdown),
                            style: CustomTextStyle.kTextStyleF10.copyWith(
                              color: AppColors.error,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          minimumSize: Size(double.infinity, 31.h),
                        ),
                        child: Text(
                          context.tr.follow_the_auction,
                          style: CustomTextStyle.kTextStyleF10.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                        ),
                        onPressed: () {
                          context.pushNamed(
                            Routes.auctionDetails,
                            arguments: widget.auction,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
