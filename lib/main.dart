import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            Text('Вопрос!'),
            Row(children: [
              RaisedButton(
                onPressed: null,
                child: Text('Ответ 1'),
              ),
              RaisedButton(
                onPressed: null,
                child: Text('Ответ 2'),
              ),
              RaisedButton(
                onPressed: null,
                child: Text('Ответ 3'),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
