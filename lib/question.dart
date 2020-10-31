import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Text(
        _questionText,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
