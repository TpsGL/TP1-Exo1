



import 'dart:developer';

import 'package:exo2/configs/AppColors.dart';
import 'package:exo2/cubit/questions_cubit.dart';
import 'package:exo2/data/model/Question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddQuestionScreen extends StatefulWidget{
  @override
  _AddQuestionScreenState createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  String _name = '';
  bool _isCorrect = false;
  String theme = 'js';


  List<String> items = ['Js','Laravel','GWT','Angular','Go'];
  bool _value = false;
  int val = -1;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Add Question'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  print(_name);
                  print(_isCorrect);
                  print(theme);
                  final snackBar = SnackBar(content: Text('Yay! A You added a Question!'));
                  addQuestion(context,_name,_isCorrect,theme);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  Navigator.pop(context);
                },
                icon: Icon(Icons.check)
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText:'Name'),
                onChanged: (name){
                  _name = name;
                },
              ),
            //SizedBox(height: 5)
          //,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text("True"),
                    leading: Radio(
                      value: 1,
                      groupValue: "same",
                      onChanged: (value) {
                          _isCorrect = true;
                      },
                      activeColor: AppColors.tomato,
                    ),
                  ),
                  ListTile(
                    title: Text("False"),
                    leading: Radio(
                      value: 2,
                      groupValue: "same",
                      onChanged: (value) {
                          _isCorrect = false;
                      },
                      activeColor: AppColors.tomato,
                    ),
                  ),
                ],
              ),
            DropdownButtonFormField(
                value: "js",
                items: [
                  DropdownMenuItem(
                    child: Text("JS"),
                    value: "js",
                  ),
                  DropdownMenuItem(
                    child: Text("GO"),
                    value: "go",
                  ),
                  DropdownMenuItem(
                    child: Text("Laravel"),
                    value: "laravel-featured",
                  ),
                  DropdownMenuItem(
                      child: Text("Angular"),
                      value: "angular"
                  ),
                  DropdownMenuItem(
                      child: Text("GWT"),
                      value: "gwt"
                  )
                ],
                onChanged: (value) {
                  theme = value as String;
                  theme = theme.toLowerCase();
                }),

            ],
          ),
        ),
      );
  }


  addQuestion(BuildContext context, String text, bool isCorrect, String theme) {
    QuestionsCubit cubit = QuestionsCubit.get(context);
    Question question = Question(questionText: text, theme: theme, isCorrect: isCorrect);
    cubit.addQuestion(question);
  }

}