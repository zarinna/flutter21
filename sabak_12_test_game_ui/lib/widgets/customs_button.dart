import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  const Questions({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 130),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
