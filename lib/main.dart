import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
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
        ? Column(
          children: [
            Question(
              _questions[_questionIndex]['questionText'],
            ),
            ...(_questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        )
        : Center(
          child: Text("DONE")
        )
      ),
    );
  }
}
