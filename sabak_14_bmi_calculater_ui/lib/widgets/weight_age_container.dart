import 'package:flutter/material.dart';

class WeightAgeContainer extends StatelessWidget {
  const WeightAgeContainer({
    super.key,
    required this.text,
    required this.san,
    required this.iconAdd,
    required this.iconRemove,
  });
  final String text;
  final int san;
  final IconData iconAdd;
  final IconData iconRemove;

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
                  icon: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      iconRemove,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      iconAdd,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
