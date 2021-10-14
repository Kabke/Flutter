import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    playSound(1);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    playSound(2);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                  onPressed: () {
                    playSound(3);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.lightGreen),
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.teal),
                  onPressed: () {
                    playSound(6);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    playSound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
