import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum TimeFormatType {
  hoursMinutes,
  hoursMinutesPeriod,
  addHours,
  addMinutes,
  hoursMinutesSeconds,
}

extension TimeOfDayExtensions on TimeOfDay {
  String stringFormat({
    bool use24HoursFormat = false,
    int addedHours = 0,
    int addedMinutes = 0,
    TimeFormatType formatType = TimeFormatType.hoursMinutes,
  }) {
    final hour = use24HoursFormat ? this.hour : hourOfPeriod;
    final minute = this.minute;

    // Add hours and minutes to the original time
    final modifiedTime = DateTime(
      2022,
      1,
      1,
      hour + addedHours,
      minute + addedMinutes,
    );

    switch (formatType) {
      case TimeFormatType.hoursMinutes:
        return DateFormat(
          use24HoursFormat ? 'HH:mm' : 'h:mm a',
        ).format(modifiedTime);
      case TimeFormatType.hoursMinutesPeriod:
        return DateFormat(
          use24HoursFormat ? 'HH:mm' : 'h:mm a',
        ).format(modifiedTime);
      case TimeFormatType.addHours:
        return DateFormat(
          use24HoursFormat ? 'HH:mm' : 'h:mm a',
        ).format(modifiedTime);
      case TimeFormatType.addMinutes:
        return DateFormat(
          use24HoursFormat ? 'HH:mm' : 'h:mm a',
        ).format(modifiedTime);
      case TimeFormatType.hoursMinutesSeconds:
        return DateFormat('HH:mm:ss').format(modifiedTime);
    }
  }
}
