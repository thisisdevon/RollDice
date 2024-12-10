import 'package:flutter/material.dart';

class StyledText extends StatelessWidget
{
  final String dataString;
  const StyledText(
    this.dataString,
    {
      super.key
    }
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      dataString, 
      style: const TextStyle(
        color: Colors.white, 
        fontSize: 34
      ),
    );
  }
}