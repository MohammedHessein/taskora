import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/app_helper.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/booking/presentation/widgets/schedule_input_field.dart';
import 'package:taskora/generated/assets.dart';

class CurrentPriceSection extends StatefulWidget {
  const CurrentPriceSection({super.key});

  @override
  State<CurrentPriceSection> createState() => _CurrentPriceSectionState();
}

class _CurrentPriceSectionState extends State<CurrentPriceSection> {
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  final TextEditingController _startTimeController = TextEditingController();
  final TextEditingController _endTimeController = TextEditingController();

  DateTime? startDate;
  DateTime? endDate;
  TimeOfDay? startTime;
  TimeOfDay? endTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              context.tr.current_price,
              style: CustomTextStyle.kTextStyleF12.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  context.tr.speaks_automatically,
                  style: CustomTextStyle.kTextStyleF8.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                wGap5,
                SvgPicture.asset(
                  Assets.svgsCurrency,
                  height: 10.h,
                  width: 10.w,
                ),
              ],
            ),
          ],
        ),
        hGap15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ScheduleInputField(
                label: context.tr.auction_start_date,
                controller: _startDateController,
                onTap: () async {
                  final picked = await pickDate(
                    context: context,
                    dateController: _startDateController,
                    selectedDate: startDate ?? DateTime.now(),
                  );
                  if (picked != null) {
                    setState(() => startDate = picked);
                  }
                },
              ),
            ),
            wGap10,
            Expanded(
              child: ScheduleInputField(
                label: context.tr.auction_end_date,
                controller: _endDateController,
                onTap: () async {
                  final picked = await pickDate(
                    context: context,
                    dateController: _endDateController,
                    selectedDate: endDate ?? DateTime.now(),
                  );
                  if (picked != null) {
                    setState(() => endDate = picked);
                  }
                },
              ),
            ),
          ],
        ),
        hGap15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ScheduleInputField(
                label: context.tr.auction_start_time,
                controller: _startTimeController,
                onTap: () async {
                  final picked = await pickTime(
                    context: context,
                    timeController: _startTimeController,
                    selectedTime: startTime ?? TimeOfDay.now(),
                  );
                  if (picked != null) {
                    setState(() => startTime = picked);
                  }
                },
              ),
            ),
            wGap10,
            Expanded(
              child: ScheduleInputField(
                label: context.tr.auction_end_time,
                controller: _endTimeController,
                onTap: () async {
                  final picked = await pickTime(
                    context: context,
                    timeController: _endTimeController,
                    selectedTime: endTime ?? TimeOfDay.now(),
                  );
                  if (picked != null) {
                    setState(() => endTime = picked);
                  }
                },
              ),
            ),
          ],
        ),
        hGap15,
        CustomFormField(
          stream: const Stream.empty(),
          onChanged: (value) {},
          hint: '6:00:00:00',
        ),
        hGap15,
      ],
    );
  }
}
