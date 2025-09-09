import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/main/requests/data/models/request_model.dart';
import 'package:taskora/generated/assets.dart';

class RequestItem extends StatelessWidget {
  const RequestItem({required this.request, super.key});

  final RequestModel request;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withValues(alpha: 0.04),
            blurRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                context.tr.request_number,
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                request.id,
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 8.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.grey.shade300,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Text(
                  request.status,
                  style: CustomTextStyle.kTextStyleF10.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 18.h,
          ),
          Row(
            children: [
              SvgPicture.asset(
                Assets.svgsLocation,
                colorFilter: ColorFilter.mode(
                  AppColors.grey.shade400,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Flexible(
                child: Text(
                  request.location,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: CustomTextStyle.kTextStyleF12.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey.shade400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            children: [
              SvgPicture.asset(
                Assets.svgsTime,
                colorFilter: ColorFilter.mode(
                  AppColors.grey.shade400,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                context.tr.date,
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey.shade400,
                ),
              ),
              const Spacer(),
              Text(
                request.date,
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey.shade400,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                '-',
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey.shade400,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                request.time,
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey.shade400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            children: [
              SvgPicture.asset(
                Assets.svgsService,
                colorFilter: ColorFilter.mode(
                  AppColors.grey.shade400,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                context.tr.services,
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey.shade400,
                ),
              ),
            ],
          ),
          Divider(
            height: 20.h,
            thickness: 1.h,
            color: AppColors.grey.shade300,
          ),
          Row(
            children: [
              Text(
                context.tr.total_price,
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey.shade400,
                ),
              ),
              const Spacer(),
              Text(
                request.totalPrice,
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey.shade400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                context.tr.follow_up_on_the_order,
                style: CustomTextStyle.kTextStyleF10.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
