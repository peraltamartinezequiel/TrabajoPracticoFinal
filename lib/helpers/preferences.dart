import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static bool _darkmode = false;

  static late SharedPreferences _preferences;

  static Future<void> initShared() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static bool get darkmode {
    return _preferences.getBool('darkmode') ?? _darkmode;
  }

  static set darkmode(bool value) {
    _darkmode = value;
    _preferences.setBool('darkmode', value);
  }
}
