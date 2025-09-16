import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/features/main/store/data/models/featured_ad_model.dart';

class ListingTypeDetailsImagesList extends StatelessWidget {
  const ListingTypeDetailsImagesList({
    this.featuredAd,
    required this.listingType,
    super.key,
  });

  final FeaturedAdModel? featuredAd;
  final ListingType listingType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          10,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Container(
              height: 60.h,
              width: 60.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(featuredAd?.image ?? ''),
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
