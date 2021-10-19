






import 'package:exo2/cubit/questions_cubit.dart';
import 'package:exo2/cubit/questions_states.dart';
import 'package:exo2/data/model/Question.dart';
import 'package:exo2/presentation/screens/add_question_screen/add_question_screen.dart';
import 'package:exo2/presentation/screens/quiz_screen/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameScreen extends StatefulWidget{
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: BlocConsumer<QuestionsCubit, QuestionsState>(
            listener: (context, state) {
              if (state is QuestionsError) {
                Scaffold.of(context).showSnackBar( SnackBar(content: Text(state.message),) );
              }
            },
            builder: (context, state) {
              QuestionsCubit cubit = QuestionsCubit.get(context);
              //cubit.getAllQuestions();
              if (state is QuestionsInitial) {
                buildLoading();
                cubit.getAllQuestions();
              }
              if (state is QuestionsLoading) {
                return buildLoading();
              } else if (state is QuestionsLoaded) {
                //cubit.getAllQuestions();
                return Quiz(questions: state.questions);
              }


              return CircularProgressIndicator();
            }
        ),
      ),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

}
