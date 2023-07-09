import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playit(int num) {
    final player = AudioPlayer();

    player.play(AssetSource("$note",style: TextStyle(color: Colors.black));
    // will immediately start playing
  }

//function to make the keys
  Expanded makekey(int num, Color color, String note) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playit(num); // will immediately start playing
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: Center(child: Text("$note")),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            makekey(1, Colors.blue,   "C    SA"),
            makekey(2, Colors.green,  "D    RE"),
            makekey(3, Colors.yellow, "E    GA"),
            makekey(4, Colors.brown,  "F    MA"),
            makekey(5, Colors.orange, "G    PA"),
            makekey(6, Colors.red,    "A    DHA"),
            makekey(7, Colors.teal,   "B    NI"),
            makekey(7, Colors.blue,   "C    sa"),
            makekey(7, Colors.green,  "D    re"),
            makekey(7, Colors.yellow, "E    ga"),
          ],
        )),
      ),
    );
  }
}
