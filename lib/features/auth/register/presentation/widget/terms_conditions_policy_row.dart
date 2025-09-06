import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class TermsConditionsPolicyRow extends StatelessWidget {
  const TermsConditionsPolicyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
          activeColor: context.customColors.primaryBlue,
          checkColor: Colors.white,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),
        wGap5,
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: context.tr.iAgreeToThe,
                    style: CustomTextStyle.kTextStyleF14.copyWith(
                      color: context.customColors.secondaryBlack.shade300,
                    ),
                  ),
                  TextSpan(
                    text: ' ${context.tr.privacyPolicy}',
                    style: CustomTextStyle.kTextStyleF14.copyWith(
                      color: context.customColors.primaryBlue,
                      decoration: TextDecoration.underline,
                      decorationColor: context.customColors.primaryBlue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
