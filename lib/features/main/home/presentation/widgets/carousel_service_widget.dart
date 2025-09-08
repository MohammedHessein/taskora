import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/generated/assets.dart';

class CarouselServiceWidget extends StatefulWidget {
  const CarouselServiceWidget({super.key});

  @override
  State<CarouselServiceWidget> createState() => _CarouselServiceWidgetState();
}

class _CarouselServiceWidgetState extends State<CarouselServiceWidget> {
  int activeIndex = 0;

  final List<String> banners = [
    Assets.imagesLaundry,
    Assets.imagesLaundry,
    Assets.imagesLaundry,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: banners.length,
          options: CarouselOptions(
            height: 160.h,
            viewportFraction: 0.8,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            onPageChanged: (index, reason) {
              setState(() => activeIndex = index);
            },
          ),
          itemBuilder: (context, index, realIndex) {
            final path = banners[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                path,
                height: 80.h,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
        SizedBox(height: 12.h),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: banners.length,
          effect: ExpandingDotsEffect(
            dotHeight: 8.h,
            dotWidth: 16.w,
            activeDotColor: AppColors.primary,
            dotColor: AppColors.grey.withValues(alpha: 0.4),
          ),
        ),
      ],
    );
  }
}
