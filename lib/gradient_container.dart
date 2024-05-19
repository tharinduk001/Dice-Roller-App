import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

const Alignment beginAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colorsList;
  const GradientContainer({super.key, required this.colorsList});

  GradientContainer.purple({super.key})
      : colorsList = [Colors.deepPurple, Colors.indigo];

  @override
  Widget build(context) {
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colorsList, begin: beginAlignment, end: endAlignment)),
      child: const Center(child: DiceRoller()),
    );
  }
}
