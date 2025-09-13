import 'package:flutter/material.dart';
import 'package:taskora/core/shared/widgets/custom_stepper.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class BookingStepHeader extends StatelessWidget {
  const BookingStepHeader({
    required this.currentStep,
    required this.currentStepTitle,
    required this.title,
    super.key,
  });
  final int currentStep;
  final String currentStepTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          currentStepTitle,
          style: CustomTextStyle.kTextStyleF16.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.grey.shade300,
          ),
        ),
        hGap10,
        Text(
          title,
          style: CustomTextStyle.kTextStyleF16.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.primaryBlue,
          ),
        ),
        hGap35,
        CustomStepper(
          totalSteps: 3,
          currentStep: currentStep,
        ),
        hGap35,
      ],
    );
  }
}
