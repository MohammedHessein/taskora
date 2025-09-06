import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class CustomStepSlider extends StatefulWidget {
  const CustomStepSlider({super.key, required this.points});
  final int points;

  @override
  State<CustomStepSlider> createState() => _CustomStepSliderState();
}

class _CustomStepSliderState extends State<CustomStepSlider> {
  late double _value;

  @override
  void initState() {
    super.initState();
    _value = widget.points.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SfSlider(
          min: 0,
          max: 5000,
          value: _value,
          stepSize: 1000,
          interval: 1000,
          showTicks: true,
          showLabels: true,
          activeColor: AppColors.onPrimary,
          inactiveColor: AppColors.onPrimary.withValues(alpha: 0.3),
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
          thumbIcon: Icon(Icons.circle, size: 12.sp, color: Colors.white),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
