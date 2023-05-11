import 'package:flutter/material.dart';

class ButtomStyle extends StatelessWidget {
  ButtomStyle(this.text, this.onTap, {super.key});
  final void Function() onTap;
  String text = 'ans';
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 38, 4, 94),
        foregroundColor: const Color.fromARGB(242, 255, 255, 255),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
      ),
      child: Text(text),
    );
  }
}
