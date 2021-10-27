

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppColors.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.darkSlateGray,
  accentColor: AppColors.dodgerBlue,
  scaffoldBackgroundColor: AppColors.darkSlateGray,
  fontFamily: GoogleFonts.oxygen().fontFamily,
);

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.indigo,
  accentColor: AppColors.tomato,
  scaffoldBackgroundColor: Color(0xfff1f1f1),
  fontFamily: GoogleFonts.oxygen().fontFamily,
);


class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";

  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  ThemeNotifier() {
    _darkTheme = true;
  }

  toggleTheme() {
    _darkTheme = !_darkTheme;
    notifyListeners();
  }

}