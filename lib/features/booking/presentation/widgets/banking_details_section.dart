import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class BankingDetailsSection extends StatelessWidget {
  const BankingDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr.bank_details,
          style: CustomTextStyle.kTextStyleF14.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        hGap35,
        CustomFormField(
          stream: const Stream.empty(),
          onChanged: (cardNumber) {},
          label: context.tr.card_number,
          nextAction: TextInputAction.next,
        ),
        hGap25,
        CustomFormField(
          stream: const Stream.empty(),
          onChanged: (cvv) {},
          label: context.tr.cvv,
          nextAction: TextInputAction.next,
        ),
        hGap25,
        CustomFormField(
          stream: const Stream.empty(),
          onChanged: (cvv) {},
          label: context.tr.expiry_date,
          nextAction: TextInputAction.next,
        ),
        hGap25,
        CustomFormField(
          stream: const Stream.empty(),
          onChanged: (cvv) {},
          label: context.tr.add_coupon_code,
          nextAction: TextInputAction.next,
        ),
      ],
    );
  }
}
