import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;

/// A utility class to get device-related information.
class DeviceInfo {
  /// Returns a string representing the current device type.
  ///
  /// This method checks if the application is running on the web,
  /// or on a specific mobile/desktop platform (Android, iOS, Windows, macOS, Linux, Fuchsia).
  static String getDeviceType() {
    if (kIsWeb) {
      return 'Web';
    } else {
      if (Platform.isAndroid) {
        return 'android';
      } else if (Platform.isIOS) {
        return 'ios';
      } else if (Platform.isFuchsia) {
        return 'Fuchsia';
      } else if (Platform.isLinux) {
        return 'Linux';
      } else if (Platform.isMacOS) {
        return 'macOS';
      } else if (Platform.isWindows) {
        return 'Windows';
      }
      return 'Unknown'; // Fallback for any other platform
    }
  }
}
