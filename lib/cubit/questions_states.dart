

import 'package:exo2/data/model/Question.dart';
import 'package:flutter/material.dart';

@immutable
abstract class QuestionsState {}

class QuestionsInitial extends QuestionsState {}

class QuestionsLoading extends QuestionsState {}

class QuestionsLoaded extends QuestionsState {
  List<Question> questions = [];

  QuestionsLoaded(this.questions);
}

class QuestionToBeAdd extends QuestionsState {}

class QuestionAdded extends QuestionsState {
  Question q;

  QuestionAdded(this.q);
}

class QuestionsError extends QuestionsState {
  final String message;
  QuestionsError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is QuestionsError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

