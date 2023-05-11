import 'package:flutter/material.dart';
import 'package:quiz_app/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 71, 14, 120),
          ),
          child: const HomePage(),
        ),
      ),
    ),
  );
}
