// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:quiz_app/constanst.dart';

class AnswerCards extends StatelessWidget {
  dynamic ontap;
  String answerText;

  AnswerCards({
    required this.ontap,
    required this.answerText,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.all(5),
        width: width ,
        height: height / 11,
        child: Center(
          child: Text(
            answerText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
            color: qTextColor, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
