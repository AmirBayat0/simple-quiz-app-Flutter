// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/constanst.dart';
import 'package:quiz_app/animation/animations.dart';

class FinishScreen extends StatelessWidget {
  VoidCallback onPressed;
  int totalScore;
  FinishScreen({required this.onPressed, required this.totalScore});
  String get resultPhrase {
    String resultText;
    if (totalScore <= 10) {
      resultText = "You are awesome!";
    } else if (totalScore <= 15) {
      resultText = "Pretty Likeable!";
    } else if (totalScore <= 20) {
      resultText = "You Are so ... Strange?!";
    } else {
      resultText = "You Are so ...!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // Instagram => @CodeWithFlexz
    // Github => AmirBayat0
    // Youtube => Programming with Flexz
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomAnime(
            1,
            20,
            child: Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: qTextColor,
              ),
            ),
          ),
          BottomAnime(
            1,
            20,
            child: Text(
              "Your Final Score is : $totalScore/25",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: qTextColor,
              ),
            ),
          ),
          BottomAnime(
            1,
            30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: width / 3,
                  height: height / 16,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text("Again"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurpleAccent)),
                  ),
                ),
                SizedBox(
                  width: width / 3,
                  height: height / 16,
                  child: ElevatedButton(
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                      child: const Text("Exite"),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurpleAccent),
                      )),
                ),
                // RaisedButton(onPressed: onPressed),
                // FlatButton(onPressed: onPressed, child: Container()),
                // OutlineButton(onPressed: onPressed),
              ],
            ),
          )
        ],
      ),
    );
  }
}
