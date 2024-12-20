import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_calculator_logic/methods/alert_dialog.dart';

import 'package:sabak_15_bmi_calculator_logic/widgets/height.container.dart';
import 'package:sabak_15_bmi_calculator_logic/widgets/male_female_containers.dart';
import 'package:sabak_15_bmi_calculator_logic/widgets/weight_age_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale = true;
  int height = 180;
  int weight = 60;
  int age = 28;
  void maleFun() {
    setState(() {
      isMale = !isMale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff221935),
        appBar: _myAppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaleFemaleContainer(
                    onTap: () => maleFun(),
                    icon: Icons.male,
                    text: 'male',
                    iconColor: isMale ? Colors.white : Colors.red,
                    iconSize: isMale ? 68 : 100,
                    textColor: isMale ? Colors.white : Colors.red,
                  ),
                  MaleFemaleContainer(
                    onTap: () => maleFun(),
                    icon: Icons.female,
                    text: 'female',
                    iconColor: isMale ? Colors.red : Colors.white,
                    iconSize: isMale ? 100 : 68,
                    textColor: isMale ? Colors.red : Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 18),
              HeightContainer(
                text: 'height',
                san: height,
                cm: 'cm',
                widget: Slider.adaptive(
                    thumbColor: Color(0xffff0f65),
                    activeColor: Colors.white,
                    inactiveColor: Colors.grey,
                    min: 0,
                    max: 300,
                    value: height.toDouble(),
                    onChanged: (v) {
                      height = v.toInt();
                      setState(() {});
                      print(height);
                    }),
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WeightAgeContainer(
                    onPressedRemoveIcon: () => setState(() => weight--),
                    onPressedAddIcon: () => setState(() => weight++),
                    text: 'weight',
                    san: weight,
                    iconAdd: Icons.add,
                    iconRemove: Icons.remove,
                  ),
                  WeightAgeContainer(
                    onPressedRemoveIcon: () => setState(() => age--),
                    onPressedAddIcon: () => setState(() => age++),
                    text: 'age',
                    san: age,
                    iconAdd: Icons.add,
                    iconRemove: Icons.remove,
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: InkWell(
          onTap: () {
            final result = (weight / ((height / 100) * (height / 100)));
            if (result > 0 && result <= 18.5) {
              AlertClass().showMyDialog(context, () {},
                  text: 'Сиз Арыксыз', onPressed: () {});
            } else if (result > 18.5 && result <= 25) {
              AlertClass().showMyDialog(context, () {},
                  text: 'Сиздин салмагыңыз нормалдуу', onPressed: () {});
            } else if (result > 25 && result <= 30) {
              AlertClass().showMyDialog(context, () {},
                  text: 'Сиздин салмагыныз ашыкча', onPressed: () {});
            } else if (result > 30 && result <= 35) {
              AlertClass().showMyDialog(context, () {},
                  text: 'Сиз семизсиз', onPressed: () {});
            } else if (result > 35 && result <= 40) {
              AlertClass().showMyDialog(context, () {},
                  text: 'Ото семизсиз', onPressed: () {});
            }
          },
          child: Container(
            height: 73,
            color: Color(0xffff0565),
            child: Center(
              child: Text(
                'CALCULATOR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ));
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
