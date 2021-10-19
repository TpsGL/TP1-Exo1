


import 'package:exo2/configs/AppColors.dart';
import 'package:exo2/presentation/screens/game_screen/grame_screen.dart';
import 'package:exo2/presentation/screens/start_screen/start_screen.dart';
import 'package:exo2/presentation/widget/button.dart';
import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget{

  final int numberOfQuestions;
  final int numberOfCorrectAnswers;

  ResultScreen({required this.numberOfCorrectAnswers, required this.numberOfQuestions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Card(
                margin: EdgeInsets.all(20),
                color: AppColors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Congratulations',
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Text(
                      'Your Score $numberOfCorrectAnswers / $numberOfQuestions',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Button(
                      buttonLabel: 'Main Menu',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                              builder: (context) => StartScreen(),
                            ));
                        //Navigator.of(context).popUntil((route) => route.isFirst);
                      }),
                  Button(
                    buttonLabel: 'Play Again',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => GameScreen(),
                          ));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }



}