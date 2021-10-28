import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int keyNote, Color kColor}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: kColor),
          onPressed: () {
            playSound(keyNote);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyNote: 1, kColor: Colors.red),
              buildKey(keyNote: 2, kColor: Colors.orange),
              buildKey(keyNote: 3, kColor: Colors.yellow),
              buildKey(keyNote: 4, kColor: Colors.green),
              buildKey(keyNote: 5, kColor: Colors.teal),
              buildKey(keyNote: 6, kColor: Colors.blue),
              buildKey(keyNote: 7, kColor: Colors.indigo),
              buildKey(keyNote: 8, kColor: Colors.deepOrange),
              buildKey(keyNote: 9, kColor: Colors.brown),
              buildKey(keyNote: 11, kColor: Colors.orangeAccent),
              buildKey(keyNote: 12, kColor: Colors.greenAccent),
              buildKey(keyNote: 13, kColor: Colors.blueAccent)
            ],
          ),
        ),
      ),
    );
  }
}
