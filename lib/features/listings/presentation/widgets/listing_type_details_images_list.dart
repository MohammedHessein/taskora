import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/features/ads/data/models/base_ad_model.dart';

class ListingTypeDetailsImagesList extends StatelessWidget {
  const ListingTypeDetailsImagesList({
    required this.listingType,
    this.baseAd,
    super.key,
    this.image,
  });

  final BaseAd? baseAd;
  final ListingType listingType;
  final String? image;

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
                  image: AssetImage(image ?? baseAd!.imageUrl),
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
