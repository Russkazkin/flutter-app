import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;

  Answer(this.answerHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: answerHandler,
        child: Text('Ответ 1'),
        color: Colors.deepPurple,
        textColor: Colors.white,
      ),
    );
  }
}
