import 'package:flutter/material.dart';
import 'package:flutter_app/answer.dart';
import 'package:flutter_app/question.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // List<String> questions = ['Твой любимый цвет?', 'Твой любимый питомец?'];
    const List<Map> questions = const [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 111, 0, 1.0),
          title: Text('Мое первое приложение'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children:
            (questions[_questionIndex]['answers'] as List<String>).map((answer) => Answer(_answerQuestion, answer)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
