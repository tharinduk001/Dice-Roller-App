import 'package:flutter/material.dart';

class MyStyledText extends StatelessWidget {
  final String outputText;
  const MyStyledText({super.key, required this.outputText});

  @override
  Widget build(BuildContext context) {
    return Text(
      outputText,
      style: const TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 251, 255, 0),
          fontWeight: FontWeight.w600),
    );
  }
}
