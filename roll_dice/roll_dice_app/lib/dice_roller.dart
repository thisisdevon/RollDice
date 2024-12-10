import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget
{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  final Random randomizer = Random();

  @override
  Widget build(Object context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      Image.asset('assets/images/dice-${currentDiceRoll}.png', width: 200,),
      const SizedBox(width: 100, height: 20),
      TextButton(onPressed: () {
        setState(() {
          currentDiceRoll = 1 + randomizer.nextInt(6);
        });
      }, 
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        foregroundColor: Colors.white, 
        textStyle: const TextStyle(fontSize: 28)),
      child: const Text('Roll Dice 2'))
      ],
    );
  }
}