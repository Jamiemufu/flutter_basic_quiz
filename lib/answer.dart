import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(30, 5, 30, 5),
        child: RaisedButton(
          color: Colors.deepPurple,
          child: Text(
            'Answer 1',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: selectHandler,
        ));
  }
}
