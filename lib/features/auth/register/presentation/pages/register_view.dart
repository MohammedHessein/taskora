import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/dependency_injection/injector.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:toastification/toastification.dart';

import 'package:taskora/features/auth/register/presentation/cubits/register_cubit.dart';
import 'package:taskora/features/auth/register/presentation/cubits/register_state.dart';
import 'package:taskora/features/auth/register/presentation/widget/register_form.dart';
import 'package:taskora/features/auth/register/presentation/widget/terms_conditions_policy_row.dart';
import 'package:taskora/generated/assets.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  String _firstName = '';
  String _lastName = '';
  String _email = '';
  String _phone = '';
  bool _isFormValid = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<RegisterCubit>(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: (message) {
              context
                ..defaultSnackBar(
                  title: 'Success',
                  description: message,
                  type: ToastificationType.success,
                )
                ..pushNamed(Routes.verifyAccount);
            },
            error: (message) {
              context.defaultSnackBar(
                title: 'Error',
                description: message,
                type: ToastificationType.error,
              );
            },
          );
        },
        builder: (context, state) {
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
                    Image.asset(
                      Assets.imagesLogo,
                      height: 150.h,
                      width: 150.w,
                      fit: BoxFit.cover,
                    ),

                    RegisterForm(
                      onFormChanged:
                          ({
                            required String firstName,
                            required String lastName,
                            required String email,
                            required String phone,
                            required bool isValid,
                          }) {
                            setState(() {
                              _firstName = firstName;
                              _lastName = lastName;
                              _email = email;
                              _phone = phone;
                              _isFormValid = isValid;
                            });
                          },
                    ),
                    hGap10,

                    const TermsConditionsPolicyRow(),

                    const Spacer(),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed:
                            _isFormValid &&
                                !state.maybeWhen(
                                  loading: () => true,
                                  orElse: () => false,
                                )
                            ? () {
                                context.read<RegisterCubit>().register(
                                  firstName: _firstName,
                                  lastName: _lastName,
                                  email: _email,
                                  phone: _phone,
                                );
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _isFormValid
                              ? AppColors.primaryBlue
                              : AppColors.grey.shade300,
                          foregroundColor: AppColors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: state.maybeWhen(
                          loading: () => const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.white,
                              ),
                            ),
                          ),
                          orElse: () => Text(
                            context.tr.common_next.toUpperCase(),
                            style: CustomTextStyle.kBtnTextStyle,
                          ),
                        ),
                      ),
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
        },
      ),
    );
  }
}
