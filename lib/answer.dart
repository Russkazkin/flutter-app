import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;

  Answer(this.answerHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: answerHandler,
        child: Text(answerText),
        color: Colors.deepPurple,
        textColor: Colors.white,
      ),
    );
  }
}
