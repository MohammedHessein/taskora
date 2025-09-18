import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          context.tr.register_with_application,
          style: CustomTextStyle.kTextStyleF24.copyWith(
            fontWeight: Dimensions.w700Bold,
          ),
        ),
        hGap30,
        CustomFormField(
          stream: Stream.value(true),
          onChanged: (name) {},
          label: context.tr.name,
          keyboardType: TextInputType.name,
          nextAction: TextInputAction.next,
        ),
        hGap15,
        CustomFormField(
          stream: Stream.value(true),
          onChanged: (phone) {},
          label: context.tr.pleaseEnterYourMobileNumberToReceiveActivationCode,
          preIcon: CountryCodePicker(
            initialSelection: 'SA',
            headerTextStyle: CustomTextStyle.kTextStyleF16.copyWith(
              fontWeight: FontWeight.bold,
            ),
            favorite: const ['966', 'SA'],
            onChanged: (code) {},
            onInit: (code) {},
            textStyle: CustomTextStyle.kTextStyleF10,
          ),
          keyboardType: TextInputType.phone,
          nextAction: TextInputAction.next,
        ),
        hGap15,
        CustomFormField(
          stream: Stream.value(true),
          onChanged: (email) {},
          label: context.tr.email,
          keyboardType: TextInputType.emailAddress,
          nextAction: TextInputAction.next,
        ),
        hGap15,
      ],
    );
  }
}
