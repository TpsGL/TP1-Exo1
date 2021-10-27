import 'package:exo2/configs/AppColors.dart';
import 'package:exo2/configs/themes.dart';
import 'package:exo2/presentation/screens/add_question_screen/add_question_screen.dart';
import 'package:exo2/presentation/screens/home_screen/home_screen.dart';
import 'package:exo2/presentation/screens/settings_screen.dart';
import 'package:exo2/presentation/widget/white_theme_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StartScreen extends StatelessWidget {

  bool isSelected = false;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeNotifier(),
        child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier notifier, child) {

            return MaterialApp(
               debugShowCheckedModeBanner: false,
               theme: notifier.darkTheme ? lightMode : darkMode,// darkMode,
               home: Scaffold(
                 appBar: AppBar(
                   title: Text('Quiz App'),
                   actions: [
                     ToggleButtons(
                      isSelected: [true],
                      children: [
                        Consumer<ThemeNotifier>(
                            builder: (context, notifier, child) =>

                          Switch(
                            value: notifier.darkTheme,
                            onChanged: (value) {
                              notifier.toggleTheme();
                            },
                            activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                          )
                          ),
                      ],
                      onPressed: (int index) {

                      },
                    )
                  ],
                ),

                body: SafeArea(
                   child: HomeScreen(),
                ),
              ),
            );
          },
        ),
    );


  }


}