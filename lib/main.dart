import 'package:flutter/material.dart';
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  final List<Map> _questions = const [
    {
      'questionText': 'Твой любимый цвет?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'white', 'score': 5},
        {'text': 'purple', 'score': 3},
        {'text': 'red', 'score': 1}
      ],
    },
    {
      'questionText': 'Твой любимый питомец?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 5},
        {'text': 'bird', 'score': 3},
        {'text': 'bunny', 'score': 1}
      ],
    },
    {
      'questionText': 'Твой любимый преподаватель?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Jura', 'score': 5},
        {'text': 'Victor', 'score': 3},
        {'text': 'Kati', 'score': 1}
      ],
    },
  ];

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 111, 0, 1.0),
          title: Text('Мое первое приложение'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
