import 'package:flutter/material.dart';

void main() {
  runApp(MyPersonalApp());
}

class MyPersonalApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPersonalAppState();
  }
}

class MyPersonalAppState extends State<MyPersonalApp> {
  int questionIndex = 0;

  var questions = [
      "What's your favorite color?",
      "What's your favorite animal?"
    ];

  void answerQuestion(int questionNumber){
    setState(() {
      questionIndex = questionNumber;
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => answerQuestion(0),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => answerQuestion(1),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => answerQuestion(2),
            ),
          ],
        ),
      ),
    );
  }
}
