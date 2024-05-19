import 'package:dice_roller/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: GradientContainer(
        colorsList: [
          Color.fromARGB(255, 59, 5, 95),
          Color.fromARGB(255, 82, 80, 199),
        ],
      ),
    ),
  ));
}
