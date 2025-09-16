import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/features/main/store/data/models/featured_ad_model.dart';
import 'package:taskora/generated/assets.dart';

class ListingTypeDetailsImageSection extends StatefulWidget {
  const ListingTypeDetailsImageSection({
    required this.listingType,
    this.featuredAd,
    super.key,
  });

  final FeaturedAdModel? featuredAd;
  final ListingType listingType;

  @override
  State<ListingTypeDetailsImageSection> createState() =>
      _ListingTypeDetailsImageSectionState();
}

class _ListingTypeDetailsImageSectionState
    extends State<ListingTypeDetailsImageSection> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                widget.featuredAd?.image ?? '',
              ),
            ),
          ),
        ),
        IconButton(
          icon: SvgPicture.asset(
            isFavorite ? Assets.svgsActiveHeart : Assets.svgsInactiveHeart,
            height: 20.h,
            width: 20.w,
          ),
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
        ),
      ],
    );
  }
}
