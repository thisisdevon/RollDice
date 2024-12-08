import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';
void main() {
  runApp(const MainApp());
}

String getNumber()
{
  return "3";
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(begin: Colors.purple, end: Colors.deepPurple,),
      ),
    );
  }
}