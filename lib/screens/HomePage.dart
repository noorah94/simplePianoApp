import 'package:flutter/material.dart';
import '../widgets/ListTileForSounds.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  Map soundsWithColor = {
    "note1": Colors.red,
    "note2": Colors.orange,
    "note3": Colors.purple,
    "note4": Colors.green,
    "note5": Colors.pinkAccent,
    "note6": Colors.blue,
    "note7": Colors.yellow,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: soundsWithColor.entries
            .map(
              (e) => ListTileForSounds(
                color: e.value,
                sound: e.key,
              ),
            )
            .toList(),
      ),
    );
  }
}
