import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playNote({required int at}) {
    final player = AudioCache();

    player.play('note$at.wav');
  }

  Expanded makeExpanded({required int musicNumber, required Color color}) {
    return Expanded(
      child: Card(
        color: color,
        child: TextButton(
            onPressed: () {
              playNote(at: musicNumber);
            },
            child: Text('')),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            makeExpanded(musicNumber: 1, color: Colors.red),
            makeExpanded(musicNumber: 2, color: Colors.orange),
            makeExpanded(musicNumber: 3, color: Colors.yellow),
            makeExpanded(musicNumber: 4, color: Colors.green),
            makeExpanded(musicNumber: 5, color: Colors.blue),
            makeExpanded(musicNumber: 6, color: Colors.indigo),
            makeExpanded(musicNumber: 7, color: Colors.purple),
          ],
        ),
      ),
    ));
  }
}
