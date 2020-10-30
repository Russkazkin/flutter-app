import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
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
            Text(questions[questionIndex]),
            Row(children: [
              RaisedButton(
                onPressed: answerQuestion,
                child: Text('Ответ 1'),
              ),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text('Ответ 2'),
              ),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text('Ответ 3'),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
