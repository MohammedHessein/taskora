import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr.enterConfirmationCode,
          style: CustomTextStyle.kTextStyleF16.copyWith(
            color: context.customColors.secondaryBlack,
            fontWeight: Dimensions.w700Bold,
          ),
        ),
        hGap25,
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: Dimensions.p16,
          ),
          child: Pinput(
            length: 5,
            onChanged: (code) {},
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            defaultPinTheme: PinTheme(
              height: 55.h,
              width: 80.w,
              textStyle: CustomTextStyle.kPinTextStyle.copyWith(
                color: context.customColors.secondaryBlack.shade300,
              ),
              decoration: BoxDecoration(
                color: context.customColors.secondaryBlack.shade50,
                borderRadius: BorderRadius.all(Radius.circular(Dimensions.r12)),
                border: Border.all(
                  color: context.customColors.secondaryBlack.shade300,
                ),
              ),
            ),
            focusedPinTheme: PinTheme(
              height: 55.h,
              width: 80.w,
              textStyle: CustomTextStyle.kPinTextStyle,
              decoration: BoxDecoration(
                color: context.customColors.secondaryBlack.shade50,
                borderRadius: BorderRadius.all(Radius.circular(Dimensions.r12)),
                border: Border.all(color: context.customColors.primaryBlue),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
