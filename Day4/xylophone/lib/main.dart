import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _soundPlayer(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded _buildWidget({Color color, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: color,
        onPressed: () => _soundPlayer(noteNumber),
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
            children: [
              _buildWidget(color: Colors.red, noteNumber: 1),
              _buildWidget(color: Colors.blue, noteNumber: 2),
              _buildWidget(color: Colors.green, noteNumber: 3),
              _buildWidget(color: Colors.white, noteNumber: 4),
              _buildWidget(color: Colors.orange, noteNumber: 5),
              _buildWidget(color: Colors.pink, noteNumber: 6),
              _buildWidget(color: Colors.yellow, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
