import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String _resultScore;
  final Function resetQuiz;

  Result(this._resultScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(_resultScore),
          FlatButton(
            child: Text("reset quiz"),
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
