import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class ThemeChnageProvider with ChangeNotifier{

  var _thememode =  ThemeMode.light;

  ThemeMode get themeMode => _thememode;
  void setTheme(themeMode) {

    _thememode = themeMode;
    notifyListeners();

  }
}