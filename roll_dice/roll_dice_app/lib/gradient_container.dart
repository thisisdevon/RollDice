import 'package:flutter/material.dart';
import 'styled_text.dart';

class GradientContainer extends StatelessWidget
{
  final Color begin;
  final Color end;

  const GradientContainer({
    super.key,
    this.begin = Colors.white,
    this.end = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [begin, end]
        )
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}