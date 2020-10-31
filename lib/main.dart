import 'package:flutter/material.dart';
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
    List<String> questions = ['Твой любимый цвет?', 'Твой любимый питомец?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Мое первое приложение'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              RaisedButton(
                onPressed: _answerQuestion,
                child: Text('Ответ 1'),
              ),
              RaisedButton(
                onPressed: _answerQuestion,
                child: Text('Ответ 2'),
              ),
              RaisedButton(
                onPressed: _answerQuestion,
                child: Text('Ответ 3'),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
