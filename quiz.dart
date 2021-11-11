import 'package:fluterrr1/questions.dart';
import 'package:flutter/material.dart';

import 'answers.dart';

class Quiz extends StatelessWidget {
final _questions;
final _indexQuestions;
final Function(String a) answers;

  const Quiz(this._questions, this._indexQuestions, this.answers);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(_questions[_indexQuestions]['questions'].toString()),

        ...(_questions[_indexQuestions]['answers'] as List<String>).map((
            e) {
          return Answers(answers, e);
        }).toList(),


      ],
    );
  }
}
