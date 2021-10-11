import 'package:exo2/bootstrap/QuizApp.dart';
import 'package:exo2/model/Question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Programming Culture Quiz',
    debugShowCheckedModeBanner: false,
    home: QuizFragment(),
  ));
}

class QuizFragment extends StatefulWidget{
  const QuizFragment({Key? key}) : super(key: key);

  @override
  _QuizFragmentState createState() => _QuizFragmentState();
}

class _QuizFragmentState extends State<QuizFragment> {
  int questionIndex = 0;

  var questionsArray = [
    Question("Is inside <js> HTML tag do we put the JavaScript ?", false, "assets_dev/js.png"),
    Question("Is Laravel support MVC Architecture ?", true, "assets_dev/laravel-featured.png"),
    Question("If expression is not passed than default value is true in expression switch statement in Go", true, "assets_dev/go.png"),
    Question("Is Angular created By Microsoft ?", false, "assets_dev/angular.png"),
    Question("Is GWT SDK support MVP style Architecture ?", true, "assets_dev/gwt.png"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue, title: Text("Programming Culture Quiz")),
      body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      child: Image.asset(questionsArray[questionIndex].srcImg),
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                        margin: EdgeInsets.all(14),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            questionsArray[questionIndex].question,
                            style: const TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        )
                    )
                ),
                Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (questionsArray[questionIndex].isCorrect == true) {
                                        ScaffoldMessenger.of(context).showSnackBar(correctAnswer());
                                      } else {
                                        ScaffoldMessenger.of(context).showSnackBar(incorrectAnswer());
                                      }
                                    });
                                  },
                                  child: Text("True")),
                            )),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (questionsArray[questionIndex].isCorrect == false) {
                                      ScaffoldMessenger.of(context).showSnackBar(correctAnswer());
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(incorrectAnswer());
                                    }
                                  });
                                },
                                child: Text("False")
                            )
                        ),

                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  updateQuiz();
                                });
                              },
                              child: Icon( Icons.arrow_forward)
                          ),
                        )
                        )
                      ],
                    )),
              ],
            )),
      ),
    );
  }

  void updateQuiz(){
    if (questionIndex != questionsArray.length - 1 ) {
      questionIndex++;
    } else {
      questionIndex = 0;
    }
  }


  SnackBar correctAnswer(){
    var textMessage = "The answer is correct";
    return SnackBar(content: Text(textMessage));
  }

  SnackBar incorrectAnswer(){
    var textMessage = "Try again";
    return SnackBar(content: Text(textMessage));
  }

}



