

import 'package:flutter/scheduler.dart';

import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {

  ThemeData _currentTheme = ThemeData.dark();

  AppProvider() {
    _currentTheme = ThemeData.light();
  }

  ThemeData get currentTheme => _currentTheme;

  set currentTheme(value) {
    _currentTheme = value;

    notifyListeners();
  }
}