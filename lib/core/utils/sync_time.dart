// This package is used to get the current time from an NTP server
import 'package:ntp/ntp.dart';

/// A class responsible for synchronizing time with the internet using NTP
class SynchronizedTime {
  SynchronizedTime._();

  // Stores the time difference between device time and NTP time
  static Duration? _timeDifference;

  /// Initializes the time difference by fetching the correct time from NTP
  static Future<void> initialize() async {
    // Get the current time from the NTP server
    final networkTime = await NTP.now();
    // Get the current device time
    final deviceTime = DateTime.now();
    // Calculate the time difference
    _timeDifference = networkTime.difference(deviceTime);
  }

  /// Return the corrected time or device time if Initialization hasn't been done
  static DateTime now() {
    return DateTime.now().add(_timeDifference ?? Duration.zero);
  }
}
