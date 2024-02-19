import 'package:flutter/material.dart';

class LanguageNotifier with ChangeNotifier {
  String _language;

  String getLanguage() => _language;

  LanguageNotifier() {
    _language = 'en';
    // you can set the language from shared_preferences here
  }

  void changeLanguage(String language) {
    _language = language;
    notifyListeners();
  }
}