import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class DiscountContainer extends StatelessWidget {
  const DiscountContainer({
    required this.leadingIcon,
    super.key,
  });
  final String leadingIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey.shade200,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          leadingIcon,
          colorFilter: ColorFilter.mode(
            AppColors.grey.shade400,
            BlendMode.srcIn,
          ),
        ),
        title: Text(
          context.tr.A_fee_of_SAR_will_be_deducted_from_your_card,
          style: CustomTextStyle.kTextStyleF12.copyWith(
            color: AppColors.grey.shade500,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
