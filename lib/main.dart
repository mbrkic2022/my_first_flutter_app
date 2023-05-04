import 'package:flutter/material.dart';
import 'package:my_first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
//        body: GradientContainer(color1: Colors.red, color2: Colors.blue),
        body:
            GradientContainer(const [Colors.green, Colors.red, Colors.yellow]),
      ),
    ),
  );
}
