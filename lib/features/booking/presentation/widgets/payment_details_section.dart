import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/checkbox_item.dart';
import 'package:taskora/core/shared/widgets/custom_drop_down_menu.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class PaymentDetailsSection extends StatelessWidget {
  const PaymentDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr.payment_details,
          style: CustomTextStyle.kTextStyleF14.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        hGap35,
        SizedBox(
          height: 60.h,
          child: CustomDropDownMenu(
            enabled: false,
            hintText: context.tr.payment_method,
          ),
        ),
        hGap15,
        CheckBoxItem(
          title: context.tr.secure_payment,
        ),
        CheckBoxItem(
          title: context.tr.amount_reserved,
        ),
        CheckBoxItem(
          title: context.tr.meeting_delivery,
        ),
      ],
    );
  }
}
