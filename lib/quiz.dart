import 'package:flutter/material.dart';
import 'package:quiz_app/homepage.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
  

  
}

class _QuizState extends State<Quiz>{
  Widget? screen;

  @override
  void initState() {
    screen =  HomePage(switchScreen);
    super.initState();
  }
  void switchScreen(){
    setState(() {
      screen = const QustionScreen();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 71, 14, 120),
          ),
          child: screen,
        ),
      ),
    );
  }


}