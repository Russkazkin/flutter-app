import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: new BoxDecoration(color: Colors.orange),
      child: Text(
        _questionText,
        style: TextStyle(fontSize: 20.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
