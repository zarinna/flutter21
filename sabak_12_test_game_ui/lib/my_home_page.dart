import 'package:flutter/material.dart';
import 'package:sabak_12_test_game_ui/oop_for_quize.dart';
import 'package:sabak_12_test_game_ui/widgets.dart';
import 'package:sabak_12_test_game_ui/widgets/customs_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363636),
      appBar: myAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Questions(
              text: quizeList[0].question,
            ),
            CustomButton(
              text: quizeList[0].answer.toString(),
              color: Color(0xff4cb050),
              onPressed: () {},
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: quizeList[0].answer.toString(),
              color: Color(0xffef443a),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: const Text(
        'Тапшырма 7',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
