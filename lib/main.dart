import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SafeArea(child: XylophonePage()),
    ),
  ));
}

class XylophonePage extends StatelessWidget {
  const XylophonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          builKey(Colors.red, 1),
          builKey(Colors.orange, 2),
          builKey(Colors.yellow, 3),
          builKey(Colors.green, 4),
          builKey(Colors.teal, 5),
          builKey(Colors.lightBlue, 6),
          builKey(Colors.deepPurple, 7)
        ],
      ),
    );
  }

  Widget builKey(Color color, int number) {
    return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      onPressed: () {
        final player = AudioCache(prefix: 'assets/sounds/');
        player.play('note$number.wav');
      },
      child: SizedBox(
        width: 400.0,
        height: 85.0,
      ),
    );
  }
}
