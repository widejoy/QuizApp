import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/models/data.dart';

void fun() {}

class QustionScreen extends StatefulWidget {

  const QustionScreen({super.key});

  @override
  State<QustionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QustionScreen> {
  final currentQuestion = qustions[0];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text(currentQuestion.text,
          style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
            width: 10,
          ),
          ButtomStyle(currentQuestion.answers[0],fun),
          const SizedBox(
            height: 15,
            width: 10,
          ),
          ButtomStyle(currentQuestion.answers[1],fun),
          const SizedBox(
            height: 15,
            width: 10,
          ),
          ButtomStyle(currentQuestion.answers[2],fun),
          const SizedBox(
            height: 15,
            width: 10,
          ),
          ButtomStyle(currentQuestion.answers[3],fun)
        ],
      ),
    );
  }
}
