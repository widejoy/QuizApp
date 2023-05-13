import 'package:flutter/material.dart';
import 'package:quiz_app/models/data.dart';
import 'package:quiz_app/questions_summary.dart';

class Results extends StatelessWidget {
  Results(this.chosenAnswers, {super.key});
  List<String> chosenAnswers = [];
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
   

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'index': i,
          'question': qustions[i].text,
          'correct_answer': qustions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'answer',
            style: TextStyle(
              color: Color.fromARGB(255, 210, 102, 237),
            ),
          ),
          QustionSummary(getSummaryData()),
          const SizedBox(
            height: 20,
          ),
          TextButton(onPressed: () {}, child: const Text('restart quiz'))
        ],
      ),
    );
  }
}
