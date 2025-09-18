import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class TermsConditionsPolicyRow extends StatefulWidget {
  const TermsConditionsPolicyRow({super.key});

  @override
  State<TermsConditionsPolicyRow> createState() =>
      _TermsConditionsPolicyRowState();
}

class _TermsConditionsPolicyRowState extends State<TermsConditionsPolicyRow> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
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
