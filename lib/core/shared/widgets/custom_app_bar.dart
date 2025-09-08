import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/custom_search_text_field.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/generated/assets.dart';

import 'gaps.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({required Future<String> locationFuture, super.key})
    : _locationFuture = locationFuture;

  final Future<String> _locationFuture;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          SvgPicture.asset(Assets.svgsLocation),
          wGap8,
          FutureBuilder<String>(
            future: _locationFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text(context.tr.loading);
              } else if (snapshot.hasError) {
                return Text(context.tr.error);
              } else {
                return Text(snapshot.data ?? context.tr.unknown);
              }
            },
          ),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(8.r),
          child: Row(
            children: [
              SvgPicture.asset(Assets.svgsCart),
              wGap10,
              Container(
                height: 27.h,
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grey.withValues(alpha: 0.5),
                  ),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgsWallet,
                      height: 16.h,
                      width: 22.w,
                      colorFilter: const ColorFilter.mode(
                        AppColors.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                    wGap8,
                    Text(
                      '0.00',
                      style: CustomTextStyle.kTextStyleF10.copyWith(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    wGap8,
                    SvgPicture.asset(
                      Assets.svgsRiyal,
                      height: 16.h,
                      width: 14.w,
                      colorFilter: const ColorFilter.mode(
                        AppColors.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
      bottom: const CustomSearchTextField(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120.h);
}
