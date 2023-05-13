import 'package:flutter/material.dart';

class QustionSummary extends StatelessWidget {
  QustionSummary(this.summary, {super.key});
  List<Map<String, Object>> summary = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map(
            (data) {
              return Row(
                children: [
                  Icon(
                    Icons.abc_rounded,
                    color: Colors.blue,
                    size: 8,
                    semanticLabel: ((data['index'] as int) + 1).toString(),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          style: const TextStyle(
                            color: Color.fromARGB(255, 44, 138, 196),
                            fontStyle: FontStyle.italic,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                          data['question'] as String,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(style: const TextStyle(
                          color: Colors.white,
                        ),
                          data['user_answer'] as String),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(style: const TextStyle(
                          color: Colors.white,),
                          data['correct_answer'] as String),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
