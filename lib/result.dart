import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function _resetHandler;
  final int _score;

  Result(this._resetHandler, this._score);

  String get resultPhrase {
    String resultText;
    if (_score <= 10) {
      resultText = "You are Awesome and Innocent";
    } else if (_score <= 20) {
      resultText = "You are Pretty Likeable!";
    } else if (_score <= 30) {
      resultText = "You are... Strange?!";
    } else {
      resultText = "You are Evil!!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: _resetHandler,
          child: Text(
            'Reset',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
        ),
      ],
    ));
  }
}
