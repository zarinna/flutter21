import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sabak_weather_app_1/constants.dart/app_text_styles.dart';
import 'package:sabak_weather_app_1/server.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String weatherInfo = "maalymat juktoluudo";
  String sityName = "";

  void weatherFun() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);
      final name = data['name'];
      final temp = data['main']['temp'];
      final withKelvin = temp - 273.15;
      setState(() {
        weatherInfo = withKelvin.toStringFixed(0);
        sityName = name;
      });
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    weatherFun();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff66d8f1),
      appBar: AppBar(
        backgroundColor: const Color(0xff66d8f1),
        leading: Image.asset('assets/icons/search.png'),
        actions: [
          Image.asset('assets/icons/menu.png'),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff66d8f1),
              Color(0xff97eafc),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bishkek,\nKyrgyzstan',
                style: AppTextStyles.LocationStyle,
              ),
              Text(
                'Tue, Jun 30',
                style: AppTextStyles.dataStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/cludy.png',
                    width: 143.16,
                    height: 137.98,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            weatherInfo,
                            style: AppTextStyles.tempStyle,
                          ),
                          Text(
                            '19',
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'Rainy',
                    style: AppTextStyles.tempNameStyle,
                  ),
                ],
              ),
              WeathetViewBanner(),
              WeathetViewBanner(),
              WeathetViewBanner(),
            ],
          ),
        ),
      ),
    );
  }
}

class WeathetViewBanner extends StatelessWidget {
  const WeathetViewBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.31),
      child: Container(
        width: double.infinity,
        height: 65.54,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(17.25),
        ),
      ),
    );
  }
}
