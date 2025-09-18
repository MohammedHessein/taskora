import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/ads/data/models/ad_model.dart';
import 'package:taskora/generated/assets.dart';

class AdListItem extends StatefulWidget {
  const AdListItem({required this.ad, super.key});

  final AdModel ad;

  @override
  State<AdListItem> createState() => _AdListItemState();
}

class _AdListItemState extends State<AdListItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.adDetails, arguments: widget.ad);
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
              /// صورة + استاتس فوقها
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
                          widget.ad.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8.h,
                      right: 8.w,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primaryBlue,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Text(
                          widget.ad.status,
                          style: CustomTextStyle.kTextStyleF9.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// بيانات الإعلان
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
                              widget.ad.title,
                              style: CustomTextStyle.kTextStyleF14.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              widget.ad.isLiked = !widget.ad.isLiked;
                              setState(() {});
                            },
                            child: SvgPicture.asset(
                              widget.ad.isLiked
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
                        widget.ad.description,
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
                            widget.ad.priceBeforeDiscount,
                            style: CustomTextStyle.kTextStyleF9.copyWith(
                              color: AppColors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            widget.ad.priceAfterDiscount,
                            style: CustomTextStyle.kTextStyleF12.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryBlue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        widget.ad.date.toString(),
                        style: CustomTextStyle.kTextStyleF10.copyWith(
                          color: AppColors.grey.shade500,
                        ),
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
                          context.tr.buy,
                          style: CustomTextStyle.kTextStyleF10.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                        ),
                        onPressed: () {
                          context.pushNamed(Routes.cart);
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
