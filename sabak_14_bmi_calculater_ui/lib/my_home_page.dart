import 'package:flutter/material.dart';
import 'package:sabak_14_bmi_calculater_ui/widgets/height.container.dart';
import 'package:sabak_14_bmi_calculater_ui/widgets/male_female_containers.dart';
import 'package:sabak_14_bmi_calculater_ui/widgets/weight_age_container.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff221935),
      appBar: _myAppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaleFemaleContainer(
                  icon: Icons.male,
                  text: 'male',
                ),
                MaleFemaleContainer(
                  icon: Icons.female,
                  text: 'female',
                ),
              ],
            ),
            SizedBox(height: 18),
            HeightContainer(
              text: 'height',
              textCm: '180 cm',
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WeightAgeContainer(
                  text: 'weight',
                  san: 60,
                  iconAdd: Icons.add,
                  iconRemove: Icons.remove,
                ),
                WeightAgeContainer(
                  text: 'Age',
                  san: 28,
                  iconAdd: Icons.add,
                  iconRemove: Icons.remove,
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 73,
        color: Color(0xffff0565),
        child: Center(
          child: Text(
            'CALCULATOR',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  AppBar _myAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff221935),
      title: const Center(
          child: Text(
        'BMI CALCULATOR',
        style: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
      )),
    );
  }
}
