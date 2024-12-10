import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

const Alignment testAlignment = Alignment.topLeft;
const Alignment testAlignment2 = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget
{
  final Color color1;
  final Color color2;
  final Alignment startAlignment;
  final Alignment endAlignment;


  const GradientContainer({
    super.key,
    required this.color1,
    required this.color2,
    this.startAlignment = Alignment.topLeft,
    this.endAlignment = Alignment.bottomRight
  });

  const GradientContainer.purple({
    super.key, 
    this.startAlignment = Alignment.topLeft,
    this.endAlignment = Alignment.bottomRight
  }) :  color1 = Colors.purple,
        color2 = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: testAlignment,
          end: testAlignment2,
          colors: [color1, color2],
        )
      ),
      child: const Center(
        child: DiceRoller()
      ) 
    );
  }
}