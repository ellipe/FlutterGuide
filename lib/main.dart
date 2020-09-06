import 'package:flutter/material.dart';
import 'question.dart';

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
          title: Text('My Personal App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => _answerQuestion(0),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => _answerQuestion(1),
            ),
          ],
        ),
      ),
    );
  }
}
