import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static bool _darkmode = false;

  static int _id = 0;

  static String _name = '';

  static String _slug = '';

  static late SharedPreferences _preferences;

  static Future<void> initShared() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static bool get darkmode {
    return _preferences.getBool('darkmode') ?? _darkmode;
  }

  static int get id {
    return _preferences.getInt('id') ?? _id;
  }

  static String get name {
    return _preferences.getString('name') ?? _name;
  }

  static String get slug {
    return _preferences.getString('slug') ?? _slug;
  }

  static set darkmode(bool value) {
    _darkmode = value;
    _preferences.setBool('darkmode', value);
  }

  static set id(int value) {
    _id = value;
    _preferences.setInt('id', value);
  }

  static set name(String value) {
    _name = value;
    _preferences.setString('name', value);
  }

  static set slug(String value) {
    _slug = value;
    _preferences.setString('slug', value);
  }
}
