import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr.login,
          style: CustomTextStyle.kTextStyleF16.copyWith(
            fontWeight: Dimensions.w700Bold,
          ),
        ),
        hGap35,
        Text(context.tr.phoneNumber),
        hGap10,
        CustomFormField(
          stream: const Stream.empty(),
          onChanged: (phone) {},
          label: context.tr.pleaseEnterYourMobileNumberToReceiveActivationCode,
          preIcon: CountryCodePicker(
            headerTextStyle: CustomTextStyle.kTextStyleF20,
            initialSelection: 'SA',
            favorite: const ['966', 'SA'],
            onChanged: (code) {},
            onInit: (code) {},
            textStyle: CustomTextStyle.kTextStyleF10,
          ),
          keyboardType: TextInputType.phone,
          nextAction: TextInputAction.next,
        ),
      ],
    );
  }
}
