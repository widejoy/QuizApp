import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void startQuiz() {}
  @override
  Widget build(BuildContext context) {
    return 
       Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 250,
            color: Colors.white38,
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Learn flutter the fun way',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            label: const Text('start Quiz'),
            icon: const Icon(Icons.arrow_forward),
          )
        ]),
      );
    
  }
}
