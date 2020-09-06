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
    {
      'questionText': "What's your favorite color?",
      'answers': [
        'Black',
        'Blue',
        'Red',
        'Blue',
      ]
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        'Cat',
        'Dog',
        'Elephant',
        'Birds',
      ]
    }
  ];

  void _answerQuestion() {
    setState(() {
      if (_questionIndex >= 1) {
        _questionIndex = 0;
      } else {
        _questionIndex++;
      }
    });
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
                  questions[_questionIndex]['questionText'],
                ),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map(
                      (answer) => Answer(
                        answerText: answer,
                        selectHandler: () => _answerQuestion(),
                      ),
                    )
                    .toList()
              ],
            ),
          )),
    );
  }
}
