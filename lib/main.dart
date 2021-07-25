import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              child: TextButton(
                onPressed: () {
                  //Audio.load('assets/note1.wav')..play()..dispose() ;
                  final player = AudioCache();
                  player.play('note1.wav');
                },

              child: Text('click me'),),
            ),
          ),
        ),
      ),
    );
  }
}
