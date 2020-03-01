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
      'answers': [
        {"text": 'Blue', "score": 1},
        {"text": 'Red', "score": 2},
        {"text": 'Green', "score": 3},
        {"text": 'Yellow', "score": 4}
      ],
    },
    {
      'questionText': 'Whats your favorite number?',
      'answers': [
        {"text": 'One', "score": 1},
        {"text": 'Two', "score": 2},
        {"text": 'Three', "score": 3},
        {"text": 'Four', "score": 4}
      ],
    },
    {
      'questionText': 'Whats your name?',
      'answers': [
        {"text": 'Ken', "score": 1},
        {"text": 'Jimothy', "score": 2},
        {"text": 'Alexander', "score": 3},
        {"text": 'Scooter', "score": 4}
      ],
    },
  ];

  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print(_totalScore);
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
            : Result("hello",_resetQuiz),
      ),
    );
  }
}
