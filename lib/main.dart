import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playit(int num) {
  final player = AudioPlayer();
  player.play(
      AssetSource('note$num.wav')
  ); // will immediately start playing
}
//function to make the keys
 Expanded makekey(int num, Color color){
  return Expanded(
    child: TextButton(

      onPressed: () {
        playit(num);// will immediately start playing
      },
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),

      child: Center(),

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
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                makekey(1,Colors.blue),
                makekey(2,Colors.red),
                makekey(3,Colors.teal),
                makekey(4,Colors.orange),
                makekey(5,Colors.green),
                makekey(6,Colors.yellow),
                makekey(7,Colors.purple),


              ],
            )

        ),

      ),

    );

  }

}
