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
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {
              final player = AudioCache(prefix: 'assets/sounds/');
              player.play('note1.wav');
            },
            child: SizedBox(
              width: 400.0,
              height: 70.0,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange)),
            onPressed: () {
              final player = AudioCache(prefix: 'assets/sounds/');
              player.play('note2.wav');
            },
            child: SizedBox(
              width: 400.0,
              height: 70.0,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow)),
            onPressed: () {
              final player = AudioCache(prefix: 'assets/sounds/');
              player.play('note3.wav');
            },
            child: SizedBox(
              width: 400.0,
              height: 70.0,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () {
              final player = AudioCache(prefix: 'assets/sounds/');
              player.play('note4.wav');
            },
            child: SizedBox(
              width: 400.0,
              height: 70.0,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)),
            onPressed: () {
              final player = AudioCache(prefix: 'assets/sounds/');
              player.play('note5.wav');
            },
            child: SizedBox(
              width: 400.0,
              height: 70.0,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlue)),
            onPressed: () {
              final player = AudioCache(prefix: 'assets/sounds/');
              player.play('note6.wav');
            },
            child: SizedBox(
              width: 400.0,
              height: 70.0,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple)),
            onPressed: () {
              final player = AudioCache(prefix: 'assets/sounds/');
              player.play('note7.wav');
            },
            child: SizedBox(
              width: 400.0,
              height: 70.0,
            ),
          ),
        ],
      ),
    );
  }
}
