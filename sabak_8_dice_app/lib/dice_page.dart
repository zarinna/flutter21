import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text('Dice App'),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SvgPicture.asset('assets/die_face_1.svg'),
              ),
              Expanded(
                child: SvgPicture.asset('assets/die_face_2.svg'),
              ),
             
            ],
          ),
           ElevatedButton(
            onPressed: () {},
            child: Text('Random Go'),
          ),
        ],
      ),
    );
  }
}
