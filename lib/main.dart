import 'package:flutter/material.dart';

void main() {
  runApp(MyPersonalApp());
}

class MyPersonalApp extends StatelessWidget {
  void answerQuestion(String question){
    print('Answer chosen!: $question');
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
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => answerQuestion('one'),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => answerQuestion('two'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => answerQuestion('three'),
            ),
          ],
        ),
      ),
    );
  }
}
