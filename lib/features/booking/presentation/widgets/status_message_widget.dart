import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class StatusMessageWidget extends StatelessWidget {
  const StatusMessageWidget({
    required this.currentStep,
    super.key,
  });

  final int currentStep;

  @override
  Widget build(BuildContext context) {
    final steps = [
      (
        context.tr.searching_technician,
        context
            .tr
            .Your_request_has_been_confirmed_and_we_are_searching_for_the_best_technician_in_your_area,
      ),
      (
        context.tr.technician_on_way,
        context.tr.The_best_technician_in_your_area_has_been_found,
      ),
      (
        context.tr.technician_on_way,
        context.tr.waiting_for_price,
      ),
      (
        context.tr.service_completed,
        context.tr.thank_you_for_using_our_service,
      ),
    ];

    final step = steps[currentStep];

    final textStyle = CustomTextStyle.kTextStyleF14.copyWith(
      fontWeight: FontWeight.w500,
    );

    return Center(
      child: Column(
        children: [
          Text(
            step.$1,
            textAlign: TextAlign.center,
            style: textStyle,
          ),
          hGap15,
          Text(
            step.$2,
            textAlign: TextAlign.center,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
