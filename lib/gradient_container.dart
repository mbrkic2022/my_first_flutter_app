import 'package:flutter/material.dart';
import 'package:my_first_app/dice_roller.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //final Color color1, color2;
  //const GradientContainer({key}) : super(key: key);
  //const GradientContainer({required this.color1, required this.color2, super.key});

  final List<Color> color;

  GradientContainer(this.color, {super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          //colors: [color1, color2],
          colors: color,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
