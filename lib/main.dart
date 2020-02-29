import 'package:flutter/material.dart';
import 'package:quiz_1/result.dart';

import './question.dart';
import './answer.dart';
import 'quiz.dart';

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
      'questionText': 'Whats your favorite color?',
      'answers': ['Blue', 'Red', 'Green', 'Yellow'],
    },
    {
      'questionText': 'Whats your favorite number?',
      'answers': ['One', 'Two', 'Three', 'Four'],
    },
    {
      'questionText': 'Whats your name?',
      'answers': ['Ken', 'Jimothy', 'Alexander', 'Scooter'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
