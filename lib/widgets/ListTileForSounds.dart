import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

class ListTileForSounds extends StatelessWidget {
  ListTileForSounds({super.key, required this.sound, required this.color});
  String sound;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        onTap: () async {
          AudioPlayer player = AudioPlayer();

          String audioasset = "notes/$sound.wav";
          ByteData bytes =
              await rootBundle.load(audioasset); //load sound from notes
          Uint8List soundbytes = bytes.buffer
              .asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
          int result = await player.playBytes(soundbytes);
          if (result == 1) {
            //play success
            print("Sound playing successful.");
          } else {
            print("Error while playing sound.");
          }
        },
        tileColor: color,
      ),
    );
  }
}
