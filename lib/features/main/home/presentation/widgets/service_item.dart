import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/main/home/data/models/technical_service_model.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({required this.service, this.width, super.key});

  final TechnicalServiceModel service;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (service.goesToBookingPage) {
          // Navigator.pushNamed(context, "/booking");
        } else {
          // Navigator.pushNamed(
          //   context,
          //   "/serviceDetails",
          //   arguments: service,
          // );
        }
      },
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 60.h,
              child: Image.asset(
                service.iconPath,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              service.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyle.kTextStyleF10.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
