import 'package:flutter/material.dart';

class HeightContainer extends StatelessWidget {
  const HeightContainer({
    super.key,
    required this.text,
    required this.textCm,
  });
  final String text;
  final String textCm;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347,
      height: 176,
      decoration: BoxDecoration(
          color: Color(0xff0A001F), borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text.toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500)),
            Text(textCm,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800)),
            Slider.adaptive(
                thumbColor: Color(0xffff0f65),
                activeColor: Colors.white,
                inactiveColor: Colors.grey,
                max: 230,
                value: 180,
                onChanged: (v) {})
          ],
        ),
      ),
    );
  }
}
