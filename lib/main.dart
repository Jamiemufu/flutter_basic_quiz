//default import for UI
import 'package:flutter/material.dart';

void main() {
  //run myApp
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // function for onPressed instead of anon function
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  //states we are overing StatelessWidget
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
      "What's your favorite place?"
    ];
    // returns the widget text
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('My First App'), backgroundColor: Colors.deepPurple),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print("Answer 2 Chosen"),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print("Answer 3 Chosen"),
            ),
          ],
        ),
      ),
    );
  }
}
