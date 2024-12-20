import 'package:flutter/material.dart';

class MaleFemaleContainer extends StatelessWidget {
  const MaleFemaleContainer({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
    this.onTap,
    required this.iconSize,
    required this.textColor,
  });
  final IconData icon;
  final String text;
  final Color iconColor;
  final void Function()? onTap;
  final double iconSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 177,
        width: 155,
        decoration: BoxDecoration(
            color: Color(0xff0A001F), borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ),
              Text(
                text.toUpperCase(),
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
