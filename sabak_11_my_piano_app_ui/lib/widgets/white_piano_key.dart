import 'package:flutter/material.dart';

class WhitePianoKey extends StatelessWidget {
  const WhitePianoKey({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        minimumSize: const Size(54.91, 217.93),
      ),
      onPressed: onPressed,
      child: Column(
        children: [
          SizedBox(height: 160),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 19.6,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}






/*
Container(
      width: 54.91,
      height: 217.93,
      decoration: BoxDecoration(
        color: const Color(0xffe4e4e4),
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Text(
              'f1',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19.6,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
*/