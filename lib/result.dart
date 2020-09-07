import 'package:flutter/material.dart';
import 'answer.dart';

class Result extends StatelessWidget {
  final Function resetGame;
  final int totalScore;

  Result({this.resetGame, this.totalScore});

  // Getter...
  String get resultPhrase {
    String resultText;
    if (totalScore <= 11) {
      resultText = 'You are awsome and innocent';
    } else if (totalScore <= 20){
      resultText = 'Pretty likeable!';
    } else if (totalScore <= 25){
      resultText = 'You are... strange?!';
    } else {
      resultText = 'You are... BAD!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Answer(
            answerText: 'Reset Game',
            selectHandler: () => resetGame(),
          )
        ],
      ),
    );
  }
}
