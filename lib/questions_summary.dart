import 'package:flutter/material.dart';

class QustionSummary extends StatelessWidget {
  QustionSummary(this.summary, {super.key});
  List<Map<String, Object>> summary = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summary.map(
        (data) {
          return Row(
            children: [
              Text(
                ((data['index'] as int) + 1).toString(),
              ),
                 Expanded(
                   child: Column(
                    children: [
                      Text(
                        data['question'] as String,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(data['user_answer'] as String),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(data['correct_answer'] as String),
                    ],
                               ),
                 )
            ],
          );
        },
      ).toList(),
    );
  }
}
