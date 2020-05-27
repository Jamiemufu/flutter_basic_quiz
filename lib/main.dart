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

  final _questions = const [
    {
      'questionText': "What's your favorite colour?",
      'answers': ['black', 'green', 'pink', 'yellow'],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': ['cat', 'dog', 'frog', 'rabbit'],
    },
    {
      'questionText': "What's your favorite colour?",
      'answers': ['black', 'green', 'pink', 'yellow'],
    },
  ];

  void _answerQuestion() {
    setState(() {
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
                : Result()
              )
            );
  }
}
