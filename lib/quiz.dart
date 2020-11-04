import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<dynamic, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: (questions[questionIndex]['answers'] as List<Map>)
              .map((answer) => Answer(() => answerQuestion(answer['score']), answer['text']))
              .toList(),
        ),
      ],
    );
  }
}
