// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/screen/finish.dart';
import 'package:quiz_app/screen/quiz.dart';
import 'components/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  int _totalScroe = 0;
  bool isFinish = false;
  _questionsAnswer(int score) {
    _totalScroe += score;

    setState(() {
      _index++;
    });
    if (_index < questions.length) {
      isFinish = false;
    } else {
      isFinish = true;
    }
  }

  void _resetQuiz() {
    setState(() {
      isFinish = false;
      _index = 0;
      _totalScroe = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.deepPurple,
          appBar: customAppBar(),
          body: isFinish == false
              ? Quiz(
                  index: _index,
                  questionsAnswer: _questionsAnswer,
                  questions: questions,
                )
              : FinishScreen(
                  onPressed: () {
                    _resetQuiz();
                  },
                  totalScore: _totalScroe,
                )),
    );
  }
}
