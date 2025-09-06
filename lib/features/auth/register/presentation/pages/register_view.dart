import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/custom_button.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';

import '../widget/register_form.dart';
import '../widget/terms_conditions_policy_row.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(
            Dimensions.p16,
            Dimensions.p34,
            Dimensions.p16,
            Dimensions.p34,
          ),
          child: Column(
            children: [
              const RegisterForm(),
              hGap10,
              const TermsConditionsPolicyRow(),
              const Spacer(),
              CustomBtn(
                stream: Stream.value(true),
                condition: true,
                label: context.tr.common_next,
                isUpperCase: true,
                onPressed: () {
                  context.pushNamed(Routes.verifyAccount);
                },
              ),
              hGap15,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.tr.alreadyHaveAccount,
                    style: CustomTextStyle.kTextStyleF16.copyWith(
                      color: context.customColors.secondaryBlack.shade500,
                      fontWeight: Dimensions.w400Regular,
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.pushNamed(Routes.login),
                    child: Text(
                      context.tr.signIn,
                      style: CustomTextStyle.kTextStyleF16.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
