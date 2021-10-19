import 'package:exo2/configs/AppColors.dart';
import 'package:exo2/presentation/screens/home_screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.darkSlateGray,
        accentColor: AppColors.dodgerBlue,
        scaffoldBackgroundColor: AppColors.darkSlateGray,
        fontFamily: GoogleFonts.oxygen().fontFamily,
      ),
      home: Scaffold(
        body: SafeArea(
          child: HomeScreen(),
        ),
      ),
    );
  }

}