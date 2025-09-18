import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/auctions/data/models/auction_model.dart';
import 'package:taskora/generated/assets.dart';

class AuctionGridItem extends StatefulWidget {
  const AuctionGridItem({required this.auction, super.key});

  final AuctionModel auction;

  @override
  State<AuctionGridItem> createState() => _AuctionGridItemState();
}

class _AuctionGridItemState extends State<AuctionGridItem>
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
    final width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.auctionDetails, arguments: widget.auction);
      },
      child: Container(
        width: width * 0.65,
        height: 320.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 140.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r),
                      ),
                      child: Image.asset(
                        widget.auction.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          AppColors.black.withValues(alpha: 0.3),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: -9.w,
                    bottom: 90.h,
                    child: IconButton(
                      onPressed: () {
                        widget.auction.isFavourite =
                            !widget.auction.isFavourite;
                        setState(() {});
                      },
                      icon: SvgPicture.asset(
                        height: 25.h,
                        width: 25.w,
                        widget.auction.isFavourite
                            ? Assets.svgsActiveHeart
                            : Assets.svgsInactiveHeart,
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
                            vertical: 3.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primaryBlue,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              color: AppColors.primaryBlue,
                            ),
                          ),
                          child: Text(
                            widget.auction.status,
                            style: CustomTextStyle.kTextStyleF10.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.white,
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
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        widget.auction.title,
                        style: CustomTextStyle.kTextStyleF11.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Flexible(
                      child: Text(
                        widget.auction.description,
                        style: CustomTextStyle.kTextStyleF8.copyWith(
                          fontWeight: Dimensions.w400Regular,
                          color: AppColors.grey,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Text(
                          widget.auction.priceBeforeDiscount,
                          style: CustomTextStyle.kTextStyleF9.copyWith(
                            color: AppColors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          widget.auction.priceAfterDiscount,
                          style: CustomTextStyle.kTextStyleF11.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      children: [
                        Text(
                          context.tr.highest_bidder,
                          style: CustomTextStyle.kTextStyleF8.copyWith(
                            color: AppColors.grey,
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Expanded(
                          child: Text(
                            widget.auction.highestBidName,
                            style: CustomTextStyle.kTextStyleF8.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryBlue,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.r),
              child: ElevatedButton(
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
            ),
          ],
        ),
      ),
    );
  }
}
