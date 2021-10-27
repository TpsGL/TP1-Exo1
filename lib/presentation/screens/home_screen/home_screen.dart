import 'package:exo2/configs/AppColors.dart';
import 'package:exo2/presentation/screens/add_question_screen/add_question_screen.dart';
import 'package:exo2/presentation/screens/game_screen/grame_screen.dart';
import 'package:exo2/presentation/widget/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.asset('assets_dev/quiz_app_logo.PNG',
                      fit: BoxFit.cover,
                      width: 120.0,
                      height: 120.0),
                ),
                SizedBox(height: 40),
                Flexible(child: Button(
                  buttonLabel: 'Play',
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameScreen(),
                    ),
                  ),
                )),
                SizedBox(height: 20), // give it width

                Flexible(child: Button(
                  buttonLabel: 'Add questions',
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddQuestionScreen(),
                    ),
                  ),
                )),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: AppColors.darkSlateGray
                        ),

                        icon: Icon(Icons.share),
                        label: Text('Share'), onPressed: () {  } ),
                    SizedBox(width: 10),

                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: AppColors.darkSlateGray
                        ),
                        icon: Icon(Icons.star_rate),
                        label: Text('Rate Us'), onPressed: () {  } ),
                  ],
                ),



              ],
            )

        ) );
  }

}