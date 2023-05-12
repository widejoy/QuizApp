import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text(
            'answer',
            style: TextStyle(
              color: Color.fromARGB(255, 210, 102, 237),
            ),
          ),
          const SizedBox(height: 20,),
          const Text('list of answers and questions'),
          TextButton(onPressed: () {}, child: const Text('restart quiz'))
        ],
      ),
    );
  }
}
