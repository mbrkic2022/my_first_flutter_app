import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var diceVar = 'assets/images/dice-1.png';

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    diceVar = 'assets/images/dice-$diceRoll.png';
    setState(() {
      build(context);
    });
    print('Changing image');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(diceVar, width: 200),
        TextButton(onPressed: rollDice, child: const Text('Roll dice'))
      ],
    );
  }
}
