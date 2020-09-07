import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  static const _questions = [
    {
      "questionText": "What's your favourite Colour?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "White", "score": 1},
        {"text": "Green", "score": 3}
      ],
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {"text": "Rabbit", "score": 2},
        {"text": "Snake", "score": 10},
        {"text": "Lion", "score": 7},
        {"text": "Elephant", "score": 5},
      ],
    },
    {
      "questionText": "What's your favourite food?",
      "answers": [
        {"text": "Rice", "score": 3},
        {"text": "Chicken", "score": 10},
        {"text": "Pasta", "score": 6},
        {"text": "Bread", "score": 1},
      ],
    },
    {
      "questionText": "What are you?",
      "answers": [
        {"text": "Theist", "score": 1},
        {"text": "Atheist", "score": 10},
      ],
    },
    {
      "questionText": "What do you prefer?",
      "answers": [
        {"text": "Day", "score": 1},
        {"text": "Night", "score": 10},
      ]
    }
  ];

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Test'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _questionIndex,
                _questions,
                answerQuestion,
              )
            : Result(_resetQuiz, _totalScore),
      ),
    );
  }
}
