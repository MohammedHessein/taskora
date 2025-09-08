import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/generated/assets.dart';

class CustomSearchTextField extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.p16),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: Padding(
            padding: EdgeInsets.all(12.r),
            child: SvgPicture.asset(
              Assets.svgsSearch,
              height: 20.h,
              width: 20.w,
              colorFilter: ColorFilter.mode(
                AppColors.grey.withValues(alpha: 0.7),
                BlendMode.srcIn,
              ),
            ),
          ),
          hintText: context.tr.search,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(40.h);
}
