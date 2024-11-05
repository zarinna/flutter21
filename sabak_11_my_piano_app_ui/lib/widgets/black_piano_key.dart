import 'package:flutter/material.dart';

class BlackPianoKey extends StatelessWidget {
  const BlackPianoKey({
    super.key,
    this.left,
    this.right,
    required this.text,
    this.onPressed,
  });
  final double? left;
  final double? right;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      child: Container(
        width: 45,
        height: 127.64,
        decoration: BoxDecoration(
          color: const Color(0xff2e364f),
          border: Border.all(color: Color(0xff171A26)),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        child: GestureDetector(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 19.6,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
