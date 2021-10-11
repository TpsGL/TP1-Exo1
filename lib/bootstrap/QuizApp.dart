

import 'package:exo2/model/Question.dart';

class QuizApp{

  int questionIndex = 0;
  final List<Question> questions;

  QuizApp(this.questions);

  void updateQuiz(){
    if (questions.length % questionIndex == 0) {
      questionIndex++;
    } else {
      questionIndex = 0;
    }
  }

}