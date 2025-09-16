import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/features/main/store/data/models/featured_ad_model.dart';
import 'package:taskora/features/main/store/presentation/widgets/featured_ad_item.dart';

class CarouselFeaturedAds extends StatefulWidget {
  const CarouselFeaturedAds({super.key});

  @override
  State<CarouselFeaturedAds> createState() => _CarouselFeaturedAdsState();
}

class _CarouselFeaturedAdsState extends State<CarouselFeaturedAds> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final featuredAds = getFeaturedAds(context);
    final width = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: featuredAds.length,
          options: CarouselOptions(
            height: 280.h,
            viewportFraction: 0.65,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 600),
            autoPlayCurve: Curves.easeInOut,
            onPageChanged: (index, reason) {
              setState(() => activeIndex = index);
            },
          ),
          itemBuilder: (context, index, realIndex) {
            final featuredAd = featuredAds[index];
            return GestureDetector(
              onTap: () {
                context.pushNamed(Routes.adDetails, arguments: featuredAd);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 6.w),
                child: FeaturedAdItem(
                  featuredAd: featuredAd,
                  width: width,
                ),
              ),
            );
          },
        ),
        SizedBox(height: 12.h),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: featuredAds.length,
          effect: ExpandingDotsEffect(
            dotHeight: 6.h,
            dotWidth: 16.w,
            activeDotColor: AppColors.primary,
            dotColor: AppColors.grey.withValues(alpha: 0.3),
            spacing: 4.w,
          ),
        ),
      ],
    );
  }
}
