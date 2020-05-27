import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetQuiz;

  Result(this.finalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (finalScore > 10) {
      resultText = '...first';
    } else if (finalScore < 10) {
      resultText = '...second';
    } else {
      resultText = '... else';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase),
          FlatButton(onPressed: resetQuiz, child: Text("Restart Quiz"))
        ],
      ),
      // child: Text(finalScore.toString())
    );
  }
}
