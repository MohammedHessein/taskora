import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/custom_button.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';

import '../widget/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
              hGap35,
              const LoginForm(),
              const Spacer(),
              CustomBtn(
                stream: Stream.value(true),
                condition: true,
                label: context.tr.sendActivationCode,
                isUpperCase: false,
                onPressed: () {
                  context.pushNamed(Routes.verifyAccount);
                },
              ),
              hGap15,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.tr.noAccount,
                    style: CustomTextStyle.kTextStyleF13.copyWith(
                      color: context.customColors.secondaryBlack.shade500,
                      fontWeight: Dimensions.w400Regular,
                    ),
                  ),
                  Flexible(
                    child: TextButton(
                      onPressed: () => context.pushNamed(Routes.register),
                      child: Text(
                        context.tr.createNewAccount,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyle.kTextStyleF13.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
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
