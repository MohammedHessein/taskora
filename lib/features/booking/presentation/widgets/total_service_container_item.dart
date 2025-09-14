import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/generated/assets.dart';

class TotalServiceContainerItem extends StatelessWidget {
  const TotalServiceContainerItem({
    required this.serviceTitle,
    required this.serviceValue,
    super.key,
  });
  final String serviceTitle;
  final String serviceValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          serviceTitle,
          style: CustomTextStyle.kTextStyleF12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.grey.shade500,
          ),
        ),
        hGap10,
        Row(
          children: [
            Text(
              serviceValue,
              style: CustomTextStyle.kTextStyleF12.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            wGap10,
            if (serviceTitle == context.tr.payment_method)
              const SizedBox.shrink()
            else
              SvgPicture.asset(
                Assets.svgsCurrency,
                colorFilter: ColorFilter.mode(
                  AppColors.grey.shade500,
                  BlendMode.srcIn,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
