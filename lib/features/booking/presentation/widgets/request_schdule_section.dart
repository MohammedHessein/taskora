import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/extensions/date_extensions.dart';
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

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? now,
      firstDate: now,
      lastDate: DateTime(now.year + 2),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        _dateController.text = picked.stringFormat(DateFormatType.shortDate);
      });
    }
  }

  Future<void> _pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            alwaysUse24HourFormat: false,
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
        _timeController.text = formatTimeOfDay(picked);
      });
    }
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
          onTap: _pickDate,
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
          onTap: _pickTime,
        ),
      ],
    );
  }
}
