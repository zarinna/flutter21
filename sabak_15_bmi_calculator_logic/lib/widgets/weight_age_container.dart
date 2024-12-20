import 'package:flutter/material.dart';

class WeightAgeContainer extends StatelessWidget {
  const WeightAgeContainer({
    super.key,
    required this.text,
    required this.san,
    required this.iconAdd,
    required this.iconRemove,
    this.onPressedRemoveIcon,
    this.onPressedAddIcon,
  });
  final String text;
  final int san;
  final IconData iconAdd;
  final IconData iconRemove;
  final void Function()? onPressedRemoveIcon;
  final void Function()? onPressedAddIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177,
      width: 150,
      decoration: BoxDecoration(
          color: Color(0xff0A001F), borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              san.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w800),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  color: Colors.red,
                  icon: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      iconRemove,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: onPressedRemoveIcon,
                ),
                IconButton(
                  color: Colors.red,
                  icon: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      iconAdd,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: onPressedAddIcon,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
