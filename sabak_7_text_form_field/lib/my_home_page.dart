import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff056C5C),
      appBar: AppBar(
        title: const Text('Тапшырма 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 110,
            ),
            Text('Zarina Abbasova',
                style: GoogleFonts.pacifico(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w400)),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  color: Color(0xffF7F9F9),
                  fontSize: 28,
                  fontWeight: FontWeight.w400),
            ),
            Divider(
              indent: 57,
              endIndent: 47.5,
              height: 0.5,
              color: Color(0xffFFFFFF),
              thickness: 2,
            ),
            SizedBox(
              height: 23.5,
            ),
            TextField(
                decoration: InputDecoration(
                    hintText: '+ 996 557 10 64 46',
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder())),
            SizedBox(
              height: 24,
            ),
            TextField(
                decoration: InputDecoration(
                    hintText: 'Abbasovazarin@gmail.com',
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder())),
          ],
        ),
      ),
    );
  }
}
