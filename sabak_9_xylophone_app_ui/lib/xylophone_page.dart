import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone_app/widgets/piano_key.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  @override
  AudioPlayer audio = AudioPlayer();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363636),
      appBar: myAppBar(),
      body: Column(
        children: [
          PianoKey(
            colors: Color(0xffEF443A),
            onTap: () {
              audio.play(AssetSource('audio/do.wav'));
            },
          ),
          PianoKey(
            colors: Color(0xffF99700),
            onTap: () {
              audio.play(AssetSource('audio/re.wav'));
            },
          ),
          PianoKey(
            colors: Color(0xffFFE93B),
            onTap: () {
              audio.play(AssetSource('audio/mi.wav'));
            },
          ),
          PianoKey(
            colors: Color(0xff4CB050),
            onTap: () {
              audio.play(AssetSource('audio/fa.wav'));
            },
          ),
          PianoKey(
            colors: Color(0xff2E968C),
            onTap: () {
              audio.play(AssetSource('audio/so.wav'));
            },
          ),
          PianoKey(
            colors: Color(0xff2996F5),
            onTap: () {
              audio.play(AssetSource('audio/la.wav'));
            },
          ),
          PianoKey(
            colors: Color(0xff9B28B1),
            onTap: () {
              audio.play(AssetSource('audio/si.wav'));
            },
          ),
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff363636),
      title: const Text(
        'Flutter Xylophone',
        style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
      ),
    );
  }
}
