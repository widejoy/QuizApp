import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

void fun() {}

class QustionScreen extends StatefulWidget {
  const QustionScreen({super.key});

  @override
  State<QustionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QustionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text('ad'),
          const SizedBox(
            height: 10,
            width: 10,
          ),
          ButtomStyle('hello',fun),
          const SizedBox(
            height: 15,
            width: 10,
          ),
          ButtomStyle('hello',fun),
          const SizedBox(
            height: 15,
            width: 10,
          ),
          ButtomStyle('hello',fun),
          const SizedBox(
            height: 15,
            width: 10,
          ),
          ButtomStyle('hello',fun)
        ],
      ),
    );
  }
}
