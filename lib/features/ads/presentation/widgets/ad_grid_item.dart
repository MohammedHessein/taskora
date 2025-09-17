import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/ads/data/models/ad_model.dart';
import 'package:taskora/generated/assets.dart';

class AdGridItem extends StatefulWidget {
  const AdGridItem({required this.ad, super.key});

  final AdModel ad;

  @override
  State<AdGridItem> createState() => _AdGridItemState();
}

class _AdGridItemState extends State<AdGridItem> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width * 0.65,
      height: 280.h,
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
                    borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    child: Image.asset(
                      widget.ad.imageUrl,
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
                  left: 0.w,
                  bottom: 70.h,
                  child: IconButton(
                    onPressed: () {
                      widget.ad.isLiked = !widget.ad.isLiked;
                      setState(() {});
                    },
                    icon: SvgPicture.asset(
                      widget.ad.isLiked
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
                      color: AppColors.primaryBlue,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      widget.ad.status,
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
                      widget.ad.title,
                      style: CustomTextStyle.kTextStyleF11.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Flexible(
                    child: Text(
                      widget.ad.description,
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
                        widget.ad.priceBeforeDiscount,
                        style: CustomTextStyle.kTextStyleF9.copyWith(
                          color: AppColors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        widget.ad.priceAfterDiscount,
                        style: CustomTextStyle.kTextStyleF11.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    widget.ad.date.toString(),
                    style: CustomTextStyle.kTextStyleF9.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
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
          ),
        ],
      ),
    );
  }
}
