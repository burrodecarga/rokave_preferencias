import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;
  static String _name = '';
  static int _gender = 1;
  static bool _isDark = false;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name {
    return _prefs.getString('name') ?? _name;
  }

  static set name(String name) {
    _name = name;
    _prefs.setString('name',name);
  }

  static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender (int gender) {
    _gender = gender;
    _prefs.setInt('gender', _gender);
  }

  static bool get isDark {
    return _prefs.getBool('isDark') ?? _isDark;
  }

  static set isDark(bool value) {
    _isDark = value;
    _prefs.setBool('isDark', _isDark);
  }
}
