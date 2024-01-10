import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});
  void PlaySound(int soundnum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnum.wav'));
  }

  Expanded buildkey({required Color color, required int soundnum}) {
    return Expanded(
        child: TextButton(
      style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
      onPressed: () {
        PlaySound(soundnum);
      },
      child: Text(""),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              buildkey(color: Colors.pink, soundnum: 1),
              buildkey(color: Colors.yellow, soundnum: 2),
              buildkey(color: Colors.orange, soundnum: 3),
              buildkey(color: Colors.red, soundnum: 4),
              buildkey(color: Colors.green, soundnum: 5),
              buildkey(color: Colors.blue, soundnum: 6),
              buildkey(color: Colors.purple, soundnum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
