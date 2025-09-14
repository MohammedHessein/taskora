import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/features/booking/presentation/widgets/step_widget.dart';

class TrackingStepsWidget extends StatelessWidget {
  const TrackingStepsWidget({
    required this.currentStep,
    super.key,
  });

  final int currentStep;

  @override
  Widget build(BuildContext context) {
    final steps = [
      context.tr.confirm_order,
      context.tr.searching_technician,
      context.tr.technician_on_way,
    ];

    return Row(
      children: List.generate(
        steps.length * 2 - 1,
        (index) {
          if (index.isEven) {
            final stepIndex = index ~/ 2;
            return Expanded(
              child: buildStepWidget(
                context: context,
                stepIndex: stepIndex,
                title: steps[stepIndex],
                currentStep: currentStep,
              ),
            );
          } else {
            return Expanded(
              child: SizedBox(height: 32.h, child: const DottedLine()),
            );
          }
        },
      ),
    );
  }
}
