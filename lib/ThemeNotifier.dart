import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
  );

  final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    hintColor: Colors.black,
    actionIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
  );

  ThemeData _themeData;

  ThemeData getTheme() => _themeData;

  ThemeNotifier() {
    _themeData = ThemeData.light();
    // you can set the theme from shared_preferences here
  }

  void setDarkMode() {
    _themeData = darkTheme;
    notifyListeners();
  }

  void setLightMode() {
    _themeData = lightTheme;
    notifyListeners();
  }
}