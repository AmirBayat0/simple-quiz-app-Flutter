// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../constanst.dart';
import 'components/answers_card.dart';

class Quiz extends StatelessWidget {
  dynamic questions;
  int index;
  dynamic questionsAnswer;
  Quiz(
      {required this.questions,
      required this.index,
      required this.questionsAnswer});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(children: [
        Container(
          height: height / 2.7,
          width: width,
          child: Center(
            child: Text(
              questions[index]['questionText'],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, color: qTextColor, fontWeight: FontWeight.w300),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(20)),
        ),
        SizedBox(
          height: 43,
        ),
        Expanded(
          child: Column(
            children: [
              ...(questions[index]['answers'] as List<Map<String,Object>>).map((answer) =>
                  AnswerCards(ontap:()=> questionsAnswer(answer['score']), answerText: answer['text'] as String))
            ],
          ),
        )
      ]),
    );
  }
}
