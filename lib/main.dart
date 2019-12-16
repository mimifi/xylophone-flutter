import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundToPlay(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  soundToPlay(1);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  soundToPlay(2);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.blue,
                onPressed: () {
                  soundToPlay(3);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.orange,
                onPressed: () {
                  soundToPlay(4);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.pink,
                onPressed: () {
                  soundToPlay(5);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.purple,
                onPressed: () {
                  soundToPlay(6);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.green,
                onPressed: () {
                  soundToPlay(7);
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
