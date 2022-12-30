import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  bool _getThemeData = false;
  bool get getTheheData => _getThemeData;

  set setThemeData(bool value) {
    _getThemeData = value;
    setTheme(value);
    notifyListeners();
  }

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("key", value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool("key") ?? false;
  }
}
