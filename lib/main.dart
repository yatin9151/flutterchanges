import 'package:flutter/material.dart';
import 'package:quiz_app_first_project/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    //from var to const to make value constant because values never change in whole code
    {
      "questionText": "What is your favorite color ?",
      "answers": [
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1},
        {"text": "red", "score": 5},
        {"text": "Black", "score": 10},
      ],
    },
    {
      "questionText": "What is favorite animal ?",
      "answers": [
        {"text": "Pigi", "score": 1},
        {"text": "Rabbit", "score": 2},
        {"text": "Horse", "score": 3},
        {"text": "Snake", "score": 3},
        {"text": "Rat", "score": 3},
      ],
    },
    {
      "questionText": "Who is your favorite sports star ?",
      "answers": [
        {"text": "LCW", "score": 1},
        {"text": "LD", "score": 2},
        {"text": "CL", "score": 4},
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    // const questions = [        //from var to const to make value constant because values never change in whole code
    //   {
    //     "questionText": "What is your favorite color ?",
    //     "answers": ["Green", "White", "Blue", "Black"],
    //   },
    //   {
    //     "questionText": "What is favorite animal ?",
    //     "answers": ["Pigi", "Rabbit", "Horse", "Snake", "Rat"],
    //   },
    //   {
    //     "questionText": "Who is your favorite sports star ?",
    //     "answers": ["LCW", "LD", "CL"],
    //   }
    // ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is app bar"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
