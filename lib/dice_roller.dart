import 'dart:math';

import 'package:dice_roller/styled_text.dart';
import 'package:flutter/material.dart';
final randomizer = Random();

//widget class
class DiceRoller extends StatefulWidget {
   const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//state class
class _DiceRollerState extends State<DiceRoller> {
  int activeDiceImage = 1;
  void rollDice() {
    setState(() {
      activeDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const MyStyledText(
          outputText: "Dice Roller",
        ),
        const SizedBox(height: 30),
        Image.asset(
          "assets/images/dice-$activeDiceImage.png",
          width: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20),
        TextButton(
            style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                backgroundColor: Colors.orange,
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onPressed: rollDice,
            child: const Text(
              "Roll Dice",
            ))
      ],
    );
  }
}
