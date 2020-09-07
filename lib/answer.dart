import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final Map<String,Object> answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answer['text'],
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        color: Colors.blue,
        onPressed: () =>selectHandler(answer['score']),
      ),
    );
  }
}
