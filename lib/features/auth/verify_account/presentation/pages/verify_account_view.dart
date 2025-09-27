import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/custom_button.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/auth/verify_account/presentation/widget/otp_form.dart';

class VerifyAccountView extends StatelessWidget {
  const VerifyAccountView({super.key});

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
              const OtpForm(),
              hGap10,
              TextButton(
                onPressed: () {},
                child: Text(
                  context.tr.resendOtp,
                  style: CustomTextStyle.kTextStyleF12.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    FontAwesomeIcons.whatsapp,
                    color: AppColors.success,
                  ),
                  wGap5,
                  Text(
                    context.tr.didNotReceiveTheCode,
                    style: CustomTextStyle.kTextStyleF12.copyWith(
                      color: AppColors.black,
                      decorationColor: AppColors.black,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CustomBtn(
                stream: Stream.value(true),
                condition: true,
                label: context.tr.common_next,
                isUpperCase: true,
                onPressed: () {
                  context.pushNamed(Routes.selectLocationView);
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
