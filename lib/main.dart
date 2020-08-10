import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colorOfKey: Colors.red, soundNumer: 1),
              buildKey(colorOfKey: Colors.orange, soundNumer: 2),
              buildKey(colorOfKey: Colors.yellow, soundNumer: 3),
              buildKey(colorOfKey: Colors.green, soundNumer: 4),
              buildKey(colorOfKey: Colors.teal, soundNumer: 5),
              buildKey(colorOfKey: Colors.blue, soundNumer: 6),
              buildKey(colorOfKey: Colors.purple, soundNumer: 7),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({Color colorOfKey, int soundNumer}) {
    return Expanded(
      child: FlatButton(
        color: colorOfKey,
        onPressed: () {
          playSound(soundNumer);
        },
      ),
    );
  }
}
