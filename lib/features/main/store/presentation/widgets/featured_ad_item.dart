import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/main/store/data/models/featured_ad_model.dart';
import 'package:taskora/generated/assets.dart';

class FeaturedAdItem extends StatefulWidget {
  const FeaturedAdItem({
    required this.featuredAd,
    required this.width,
    super.key,
  });

  final FeaturedAdModel featuredAd;
  final double width;

  @override
  State<FeaturedAdItem> createState() => _FeaturedAdItemState();
}

class _FeaturedAdItemState extends State<FeaturedAdItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.65,
      height: 220.h,
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
            height: 120.h,
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
                      widget.featuredAd.image,
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
                  top: 8.h,
                  right: 15.w,
                  child: Container(
                    width: 6.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: AppColors.white.withValues(alpha: 0.4),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: 20.h,
                  right: 30.w,
                  child: Container(
                    width: 4.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: AppColors.white.withValues(alpha: 0.3),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: 12.h,
                  left: 25.w,
                  child: Container(
                    width: 5.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      color: AppColors.white.withValues(alpha: 0.4),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  left: 0.w,
                  bottom: 70.h,
                  child: IconButton(
                    onPressed: () {
                      widget.featuredAd.isLiked = !widget.featuredAd.isLiked;
                      setState(() {});
                    },
                    icon: SvgPicture.asset(
                      widget.featuredAd.isLiked
                          ? Assets.svgsActiveHeart
                          : Assets.svgsInactiveHeart,
                    ),
                  ),
                ),
                Positioned(
                  top: 8.h,
                  right: 8.w,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 3.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.brightYellow,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      context.tr.featured_ad,
                      style: CustomTextStyle.kTextStyleF10.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
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
                      widget.featuredAd.title,
                      style: CustomTextStyle.kTextStyleF11.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Flexible(
                    child: Text(
                      widget.featuredAd.description,
                      style: CustomTextStyle.kTextStyleF8.copyWith(
                        fontWeight: Dimensions.w400Regular,
                        color: AppColors.grey,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        widget.featuredAd.priceBeforeDiscount,
                        style: CustomTextStyle.kTextStyleF9.copyWith(
                          color: AppColors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Row(
                        children: [
                          Text(
                            widget.featuredAd.priceAfterDiscount,
                            style: CustomTextStyle.kTextStyleF11.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    widget.featuredAd.date,
                    style: CustomTextStyle.kTextStyleF9.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              minimumSize: Size(double.infinity, 31.h),
            ),
            child: Text(
              context.tr.buy,
              style: CustomTextStyle.kTextStyleF10.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
