import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  // This function receives a input called sound number and a audio player
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  //This is a input and output function
  Expanded buildKey({Color buttonColor, int soundNumber, String text}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: buttonColor,
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(buttonColor: Colors.greenAccent, soundNumber: 1, text:"Green accent"),
              buildKey(buttonColor: Colors.green, soundNumber: 2, text:"Green"),
              buildKey(buttonColor: Colors.blue, soundNumber: 3, text:"Blue"),
              buildKey(buttonColor: Colors.yellowAccent, soundNumber: 4, text:"Yellow accent"),
              buildKey(buttonColor: Colors.orange, soundNumber: 5, text:"Orange"),
              buildKey(buttonColor: Colors.orangeAccent, soundNumber: 6, text:"Orange accent"),
              buildKey(buttonColor: Colors.purple, soundNumber: 7, text:"Purple"),

            ],
          ),
        ),
      ),
    );
  }
}







