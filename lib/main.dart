import 'package:flutter/material.dart';
import 'package:flutter_guide/quiz.dart';
import 'quiz.dart';
import 'result.dart';

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
  int _totalScore = 0;

  var _questions = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text':'Black', 'score': 20},
        {'text':'Blue', 'score': 10},
        {'text':'Red', 'score': 5},
        {'text':'Blue', 'score': 2},
      ]
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text':'Cat', 'score': 20},
        {'text':'Dog', 'score': 10},
        {'text':'Elephant', 'score': 5},
        {'text':'Birds', 'score': 1},
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
      }
    });
  }

  void _resetGame() {
    setState(() {
     _questionIndex = 0;
     _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('One Thousand Questions...'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(
                totalScore: _totalScore,
                resetGame: _resetGame,
              ),
      ),
    );
  }
}
