import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildWidget(int number, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
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
            children: [
              buildWidget(1, Colors.red),
              buildWidget(2, Colors.orange),
              buildWidget(3, Colors.yellow),
              buildWidget(4, Colors.green),
              buildWidget(5, Colors.teal),
              buildWidget(6, Colors.blue),
              buildWidget(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
