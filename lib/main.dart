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
  final List<Map> _questions = const [
    {
      'questionText': 'Твой любимый цвет?',
      'answers': ['black', 'white', 'purple', 'red'],
    },
    {
      'questionText': 'Твой любимый питомец?',
      'answers': ['dog', 'cat', 'bird', 'bunny'],
    },
    {
      'questionText': 'Твой любимый преподаватель?',
      'answers': ['Max', 'Jura', 'Victor', 'Kati'],
    },
  ];

  void _answerQuestion() {
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
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,)
            : Result(),
      ),
    );
  }
}
