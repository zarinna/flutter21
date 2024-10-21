import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sabak_8_dice_app/Widgets/custom_button.dart';
import 'package:sabak_8_dice_app/Widgets/image_widget.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 3;
  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text('Dice App'),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/jpeg/unnamed.jpeg'))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ImageWidget(
                        image: 'assets/svg/die_face_$leftDiceNumber.svg'),
                  ),
                  Expanded(
                    child: ImageWidget(
                        image: 'assets/svg/die_face_$rightDiceNumber.svg'),
                  ),
                ],
              ),
              CustomButton(
                onPressed: rollDice,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
