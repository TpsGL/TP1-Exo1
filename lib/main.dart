
import 'package:exo2/cubit/questions_cubit.dart';
import 'package:exo2/data/repositories/QuestionRepository.dart';
import 'package:exo2/presentation/screens/start_screen/start_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionsRepository repository = new QuestionsRepository();
   return MaterialApp(
        title: 'Programming Culture Quiz',
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
            create: (BuildContext context) => QuestionsCubit(repository),
            child: StartScreen()),
   );

  }
  
}