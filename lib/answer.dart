import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Properties are been passed as props.
  final String answerText;
  final Function selectHandler; 

  Answer({this.answerText = 'C, Choose C!', this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
