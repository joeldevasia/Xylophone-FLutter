import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

void playSound(int num) {
  final player = AudioCache();
  player.play('note$num.wav');
}

buildKey({required int num, required Color colors}){
  return Expanded(
    child: ElevatedButton(
      onPressed: () {
        playSound(num);
      },
      style: ElevatedButton.styleFrom(
        primary: colors,
      ),
      child: null,
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(num: 1, colors: Colors.red),
              buildKey(num: 2, colors: Colors.orange),
              buildKey(num: 3, colors: Colors.yellow),
              buildKey(num: 4, colors: Colors.green),
              buildKey(num: 5, colors: Colors.green.shade900),
              buildKey(num: 6, colors: Colors.blue),
              buildKey(num: 7, colors: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
