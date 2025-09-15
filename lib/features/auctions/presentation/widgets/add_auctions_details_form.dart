import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/generated/assets.dart';

class AddAuctionsDetailsForm extends StatelessWidget {
  const AddAuctionsDetailsForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomFormField(
            postIcon: Padding(
              padding: EdgeInsets.all(12.r),
              child: SvgPicture.asset(
                Assets.svgsCurrency,
                colorFilter: const ColorFilter.mode(
                  AppColors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            hint: context.tr.start_price,
            stream: const Stream.empty(),
            onChanged: (value) {},
          ),
          hGap20,
          CustomFormField(
            postIcon: Padding(
              padding: EdgeInsets.all(12.r),
              child: SvgPicture.asset(
                Assets.svgsCurrency,
                colorFilter: const ColorFilter.mode(
                  AppColors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            hint: context.tr.bid_increment,
            stream: const Stream.empty(),
            onChanged: (value) {},
          ),
          hGap20,
          CustomFormField(
            postIcon: Padding(
              padding: EdgeInsets.all(12.r),
              child: SvgPicture.asset(
                Assets.svgsCurrency,
                colorFilter: const ColorFilter.mode(
                  AppColors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            hint: context.tr.secret_limit,
            stream: const Stream.empty(),
            onChanged: (value) {},
          ),
          hGap20,
          CustomFormField(
            postIcon: Padding(
              padding: EdgeInsets.all(12.r),
              child: SvgPicture.asset(
                Assets.svgsCurrency,
                colorFilter: const ColorFilter.mode(
                  AppColors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            hint: context.tr.announced_limit,
            stream: const Stream.empty(),
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
