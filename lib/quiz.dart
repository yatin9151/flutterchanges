import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]["questionText"],
        ),

        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>).map((answer) {
          print(answer);
          return Answer(() => answerQuestion(answer["score"]), answer["text"]);
        }).toList()

        // Answer(_answerQuestion),

        // RaisedButton(
        //   child: Text("Answer 1"),
        //   onPressed: _answerQuestion,
        // ),
        // RaisedButton(
        //   child: Text("Answer 2"),
        //   onPressed: () => print("Answer 2 "),
        // ),
        // RaisedButton(
        //   child: Text("Answer 3"),
        //   onPressed: () {
        //     print("Answer 3 chosen");
        //   },
        // ),
      ],
    );
  }
}
