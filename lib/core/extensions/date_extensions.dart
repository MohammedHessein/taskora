import 'package:intl/intl.dart';

import '../../generated/l10n.dart';

enum DateFormatType {
  shortDate,
  shortDateTime,
  hyphenatedDate,
  hyphenatedDateTime,
  dayMonthYear,
  monthDayYear,
  dayOnly,
  fullDayMonthYear,
  shortDayMonthYear,
  fullDayMonthYearLong,
  shortDayMonthYearLong,
  timeOnly,
  timeAgo,
  timeWithSeconds,
  fullGmtWithTimezone,
}

extension DateExtensions on DateTime {
  String stringFormat(DateFormatType formatType,
      {bool use24HoursFormat = false, bool showSeconds = false,}) {
    switch (formatType) {
      case DateFormatType.shortDate:
        return DateFormat('MM/dd/yyyy').format(this);
      case DateFormatType.shortDateTime:
        return DateFormat(use24HoursFormat
                ? 'MM/dd/yyyy HH:mm${showSeconds ? ':ss' : ''}'
                : 'MM/dd/yyyy h:mm${showSeconds ? ':ss a' : ' a'}',)
            .format(this);
      case DateFormatType.hyphenatedDate:
        return DateFormat('MM-dd-yyyy').format(this);
      case DateFormatType.hyphenatedDateTime:
        return DateFormat(use24HoursFormat
                ? 'MM-dd-yyyy HH:mm${showSeconds ? ':ss' : ''}'
                : 'MM-dd-yyyy h:mm${showSeconds ? ':ss a' : ' a'}',)
            .format(this);
      case DateFormatType.dayMonthYear:
        return DateFormat('dd MMM yyyy').format(this);
      case DateFormatType.monthDayYear:
        return DateFormat('MM/dd/yyyy').format(this);
      case DateFormatType.dayOnly:
        return DateFormat('EEEE').format(this);
      case DateFormatType.fullDayMonthYear:
        return DateFormat('EEEE dd MMM yyyy').format(this);
      case DateFormatType.shortDayMonthYear:
        return DateFormat('E dd MMM yyyy').format(this);
      case DateFormatType.fullDayMonthYearLong:
        return DateFormat('EEEE dd MMMM yyyy').format(this);
      case DateFormatType.shortDayMonthYearLong:
        return DateFormat('E dd MMMM yyyy').format(this);

      case DateFormatType.timeOnly:
        return DateFormat(use24HoursFormat
                ? 'HH:mm${showSeconds ? ':ss' : ''}'
                : 'h:mm${showSeconds ? ':ss a' : ' a'}',)
            .format(this);
      case DateFormatType.timeAgo:
        final now = DateTime.now();
        final difference = now.difference(this);

        if (difference.inSeconds < 60) {
          return S.current.timeAgo_second(difference.inSeconds);
        } else if (difference.inMinutes < 60) {
          return S.current.timeAgo_minute(difference.inMinutes);
        } else if (difference.inHours < 24) {
          return S.current.timeAgo_hour(difference.inHours);
        } else if (difference.inDays == 1) {
          return S.current.timeAgo_day(1);
        } else {
          return S.current.timeAgo_day(difference.inDays);
        }

      case DateFormatType.timeWithSeconds:
        return DateFormat(use24HoursFormat
                ? 'HH:mm${showSeconds ? ':ss' : ''}'
                : 'h:mm${showSeconds ? ':ss a' : ' a'}',)
            .format(this);

      case DateFormatType.fullGmtWithTimezone:
        final formattedDate =
            DateFormat('EEE MMM d yyyy HH:mm:ss').format(this);
        final offset = timeZoneOffset.isNegative ? '-' : '+';
        final hours = timeZoneOffset.inHours.abs();
        final minutes = timeZoneOffset.inMinutes.abs() % 60;
        final timeZone =
            'GMT $offset${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
        const timeZoneName = "(Eastern European Standard Time)";
        return '$formattedDate $timeZone $timeZoneName';
    }
  }

  String toAgeString() {
    final now = DateTime.now();
    var years = now.year - year;
    var months = now.month - month;
    var days = now.day - day;

    // Adjust for negative month/day values
    if (months < 0 || (months == 0 && days < 0)) {
      years--;
      months += 12;
    }
    if (days < 0) {
      final prevMonth = DateTime(now.year, now.month - 1, day);
      days = now.difference(prevMonth).inDays + 1;
    }

    return '$years years old';
  }

  // Helper function to parse date string
  DateTime parseDateString(String dateString) {
    final parts = dateString.split('-');
    final day = int.parse(parts[0]);
    final month = int.parse(parts[1]);
    final year = int.parse(parts[2]);

    return DateTime(year, month, day);
  }
}
