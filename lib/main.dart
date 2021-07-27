import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height:10),
              Expanded(
                child: Container(
                  //height: 100,
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
                  onPressed: () {
                    playSound(1);
                  },
                  ),
                ),
              ),
              SizedBox(height:10),
              Expanded(
                child: Container(
                  child: TextButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
                    onPressed: () {
                      playSound(2);
                    },
                    ),
                ),
              ),
              SizedBox(height:10),
              Expanded(
                child: Container(
                  child: TextButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)),
                    onPressed: () {
                      playSound(3);
                    },
                    ),
                ),
              ),
              SizedBox(height:10),
              Expanded(
                child: Container(
                  child: TextButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {
                      playSound(4);
                    },
                    ),
                ),
              ),
              SizedBox(height:10),
              Expanded(
                child: Container(
                  child: TextButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.teal)),
                    onPressed: () {
                      playSound(5);
                    },
                    ),
                ),
              ),
              SizedBox(height:10),
              Expanded(
                child: Container(
                  child: TextButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
                    onPressed: () {
                      playSound(6);
                    },
                    ),
                ),
              ),
              SizedBox(height:10),
              Expanded(
                child: Container(
                  child: TextButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.purple)),
                    onPressed: () {
                      playSound(7);
                    },
                    ),
                ),
              ),
              SizedBox(height:10),]

          ),
        ),
      ),
    );
  }
}
