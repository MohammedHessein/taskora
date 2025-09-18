import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/generated/assets.dart';

class AuctionVideoSection extends StatefulWidget {
  const AuctionVideoSection({required this.image, super.key});

  final String image;

  @override
  State<AuctionVideoSection> createState() => _AuctionVideoSectionState();
}

class _AuctionVideoSectionState extends State<AuctionVideoSection> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final width = size.width;
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
                widget.image,
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
        Positioned(
          top: 35.h,
          left: width / 2 - 85.w,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.play_arrow,
              color: AppColors.white,
            ),
            iconSize: 100.sp,
          ),
        ),
      ],
    );
  }
}
