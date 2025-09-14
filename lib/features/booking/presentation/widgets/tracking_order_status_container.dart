import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/shared/widgets/progress_indicator_widget.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/features/booking/presentation/widgets/status_message_widget.dart';
import 'package:taskora/features/booking/presentation/widgets/tracking_steps_widget.dart';

class TrackingOrderStatusContainer extends StatelessWidget {
  const TrackingOrderStatusContainer({
    required this.currentTrackingStep,
    super.key,
  });

  final int currentTrackingStep;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.grey.shade100,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          if (currentTrackingStep == 3)
            const SizedBox()
          else
            const ProgressIndicatorWidget(),
          hGap20,
          StatusMessageWidget(
            currentStep: currentTrackingStep,
          ),
          hGap20,
          TrackingStepsWidget(
            currentStep: currentTrackingStep,
          ),
        ],
      ),
    );
  }
}
