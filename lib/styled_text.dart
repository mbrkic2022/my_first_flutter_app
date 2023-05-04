import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String outputText;
  const StyledText(this.outputText, {super.key});
//  const StyledText(String text, {super.key}) : outputText=text;

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(fontSize: 28, color: Colors.white),
    );
  }
}
