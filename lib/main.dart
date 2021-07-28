import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKeys({int soundNumber, Color color}){
    return Expanded(
      child: Container(
        //height: 100,
        child: TextButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(color)),
          onPressed: () {
            playSound(soundNumber);
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
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKeys(soundNumber:1, color:Colors.red),
              buildKeys(soundNumber:2, color:Colors.orange),
              buildKeys(soundNumber:3, color:Colors.yellow),
              buildKeys(soundNumber:4, color:Colors.green),
              buildKeys(soundNumber:5, color:Colors.teal),
              buildKeys(soundNumber:6, color:Colors.blue),
              buildKeys(soundNumber:7, color:Colors.purple),
]

          ),
        ),
      ),
    );
  }
}
