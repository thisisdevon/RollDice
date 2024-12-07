import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

String getNumber()
{
  return "0";
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World 1!${getNumber()}  test'),
        ),
      ),
    );
  }
}
