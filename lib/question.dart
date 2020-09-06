import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // construsctor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}