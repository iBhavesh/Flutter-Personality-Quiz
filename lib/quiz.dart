import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final int _questionIndex;
  final Function _answerQuestion;

  Quiz(
    this._questionIndex,
    this._questions,
    this._answerQuestion,
  );
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(_questions[_questionIndex]['questionText']),
      ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
        return Answer(_answerQuestion, answer);
      }).toList()
    ]);
  }
}
