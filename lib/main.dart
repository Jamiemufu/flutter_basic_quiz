import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _finalScore = 0;

  final _questions = const [
    {
      'questionText': "What's your favorite colour?",
      'answers': [
        {'text': 'black', 'score': 4},
        {'text': 'green', 'score': 5},
        {'text': 'yellow', 'score': 10},
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'black', 'score': 4},
        {'text': 'green', 'score': 5},
        {'text': 'yellow', 'score': 10},
      ],
    },
    {
      'questionText': "What's your favorite colour?",
      'answers': [
        {'text': 'black', 'score': 4},
        {'text': 'green', 'score': 5},
        {'text': 'yellow', 'score': 10},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _finalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _finalScore += score;
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print("We have more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Quiz'),
              backgroundColor: Colors.deepPurple,
            ),
            body: _questionIndex < _questions.length
                ? Quiz(_questions, _questionIndex, _answerQuestion)
                : Result(_finalScore, _resetQuiz)));
  }
}
