import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophoneapp());
}

class Xylophoneapp extends StatelessWidget {
  const Xylophoneapp({super.key});

  void playsound(String path) {
    final player = AudioPlayer();
    player.play(AssetSource(path));
  }

  Expanded buildKey(String name, {required Color col}) {
    return Expanded(
      child: Container(
        color: col,
        child: TextButton(
          child: const Text(''),
          onPressed: () {
            playsound(name);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey('note1.wav', col: Colors.red),
              buildKey('note2.wav', col: Colors.orange),
              buildKey('note3.wav', col: Colors.yellow),
              buildKey('note4.wav', col: Colors.green),
              buildKey('note5.wav', col: Colors.teal),
              buildKey('note6.wav', col: Colors.blue),
              buildKey('note7.wav', col: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
