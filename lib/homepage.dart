import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void startQuiz() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 71, 14, 120),
      ),
      child: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 150,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Learn flutter the fun way',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: startQuiz,
            child: const Text('start Quiz'),
          )
        ]),
      ),
    );
  }
}
