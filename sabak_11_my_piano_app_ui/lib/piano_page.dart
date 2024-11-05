import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak_11_my_piano_app_ui/widgets/black_piano_key.dart';
import 'package:sabak_11_my_piano_app_ui/widgets/white_piano_key.dart';

class PianoPage extends StatelessWidget {
  const PianoPage({super.key});

  @override
  Widget build(BuildContext context) {
    AudioPlayer nota = AudioPlayer();
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          const Spacer(),
          Stack(
            children: [
              Row(
                children: [
                  WhitePianoKey(
                    text: 'f1',
                    onPressed: () => nota.play(
                      AssetSource('audio/do.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f2',
                    onPressed: () => nota.play(
                      AssetSource('audio/re.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f3',
                    onPressed: () => nota.play(
                      AssetSource('audio/mi.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f4',
                    onPressed: () => nota.play(
                      AssetSource('audio/fa.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f5',
                    onPressed: () => nota.play(
                      AssetSource('audio/so.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f6',
                    onPressed: () => nota.play(
                      AssetSource('audio/la.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f1',
                    onPressed: () => nota.play(
                      AssetSource('audio/si.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f2',
                    onPressed: () => nota.play(
                      AssetSource('audio/do.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f3',
                    onPressed: () => nota.play(
                      AssetSource('audio/re.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f4',
                    onPressed: () => nota.play(
                      AssetSource('audio/mi.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f5',
                    onPressed: () => nota.play(
                      AssetSource('audio/fa.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f6',
                    onPressed: () => nota.play(
                      AssetSource('audio/so.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f7',
                    onPressed: () => nota.play(
                      AssetSource('audio/la.wav'),
                    ),
                  ),
                ],
              ),
              BlackPianoKey(
                left: 45,
                text: "f1",
                onPressed: () => nota.play(
                  AssetSource('audio/do.wav'),
                ),
              ),
              BlackPianoKey(
                left: 110,
                text: "f2",
                onPressed: () => nota.play(
                  AssetSource('audio/re.wav'),
                ),
              ),
              BlackPianoKey(
                left: 110,
                text: "f3",
                onPressed: () => nota.play(
                  AssetSource('audio/mi.wav'),
                ),
              ),
              BlackPianoKey(
                left: 245,
                text: "f4",
                onPressed: () => nota.play(
                  AssetSource('audio/fa.wav'),
                ),
              ),
              BlackPianoKey(
                left: 311,
                text: "f5",
                onPressed: () => nota.play(
                  AssetSource('audio/so.wav'),
                ),
              ),
              BlackPianoKey(
                left: 450,
                text: "f1",
                onPressed: () => nota.play(
                  AssetSource('audio/la.wav'),
                ),
              ),
              BlackPianoKey(
                left: 515,
                text: "f2",
                onPressed: () => nota.play(
                  AssetSource('audio/si.wav'),
                ),
              ),
              BlackPianoKey(
                right: 250,
                text: "f3",
                onPressed: () => nota.play(
                  AssetSource('audio/do.wav'),
                ),
              ),
              BlackPianoKey(
                right: 180,
                text: "f4",
                onPressed: () => nota.play(
                  AssetSource('audio/re.wav'),
                ),
              ),
              BlackPianoKey(
                right: 110,
                text: "f5",
                onPressed: () => nota.play(
                  AssetSource('audio/mi.wav'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text(
        'My Piano App',
        style: TextStyle(
            color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700),
      ),
    );
  }
}
