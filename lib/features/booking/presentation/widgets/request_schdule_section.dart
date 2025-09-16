import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/app_helper.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/booking/presentation/widgets/schedule_input_field.dart';
import 'package:taskora/generated/assets.dart';

class RequestScheduleSection extends StatefulWidget {
  const RequestScheduleSection({super.key});

  @override
  State<RequestScheduleSection> createState() => _RequestScheduleSectionState();
}

class _RequestScheduleSectionState extends State<RequestScheduleSection> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr.requestSchedule,
          style: CustomTextStyle.kTextStyleF14.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.h),
        ScheduleInputField(
          controller: _dateController,
          suffix: Padding(
            padding: EdgeInsets.all(16.w),
            child: SvgPicture.asset(
              Assets.svgsCalendar,
              height: 16.w,
              width: 16.w,
            ),
          ),
          label: context.tr.start_date,
          onTap: () {
            pickDate(
              context: context,
              dateController: _dateController,
              selectedDate: selectedDate ?? DateTime.now(),
            );
            setState(() {});
          },
        ),
        SizedBox(height: 20.h),
        ScheduleInputField(
          controller: _timeController,
          suffix: Padding(
            padding: EdgeInsets.all(16.w),
            child: SvgPicture.asset(
              Assets.svgsTime,
              height: 16.w,
              width: 16.w,
            ),
          ),
          label: context.tr.start_time,
          onTap: () {
            pickTime(
              context: context,
              timeController: _timeController,
              selectedTime: selectedTime ?? TimeOfDay.now(),
            );
            setState(() {});
          },
        ),
      ],
    );
  }
}
