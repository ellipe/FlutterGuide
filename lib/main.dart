import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyPersonalApp());
}

class MyPersonalApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyPersonalAppState();
  }
}

class _MyPersonalAppState extends State<MyPersonalApp> {
  int _questionIndex = 0;

  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?"
  ];

  void _answerQuestion(int questionNumber) {
    setState(() {
      _questionIndex = questionNumber;
    });
    print('Answer chosen!: ${questions[questionNumber]}');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('One Thousand Questions...'),
          ),
          body: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Question(
                  questions[_questionIndex],
                ),
                Answer(
                    answerText: 'Answer 1',
                    selectHandler: () => _answerQuestion(0)),
                Answer(
                    answerText: 'Answer 2',
                    selectHandler: () => _answerQuestion(1)),
              ],
            ),
          )),
    );
  }
}
