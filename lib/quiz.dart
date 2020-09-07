import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({@required this.questions, @required this.answerQuestion, @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Question(
            questions[questionIndex]['questionText'],
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map(
                (answer) => Answer(
                  answerText: answer['text'],
                  selectHandler: () => answerQuestion(answer['score']),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
