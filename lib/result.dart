import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultText {
    var text;
    if (resultScore <= 9) {
      text = 'You are awesome and innocent';
    } else if (resultScore <= 15) {
      text = 'Pretty likable';
    } else if (resultScore < 25) {
      text = 'You are ... strange?!';
    } else {
      text = 'You are so bad!';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetQuiz,
            color: Colors.deepPurple,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
