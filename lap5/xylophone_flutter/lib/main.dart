import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static AudioPlayer player = AudioPlayer();
  var audioColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];

  Widget playerAu(int num) {
    return Flexible(
      child: Container(
        color: audioColors[num],
        child: TextButton(
          onPressed: () {
            // final player = AudioPlayer();
            player.play('assets/note${num + 1}.wav');
          },
          child: Center(
            child: Text(
              'sound ${num + 1}',
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisSize: MainAxisSize.max,
              children: [
                playerAu(0),
                playerAu(1),
                playerAu(2),
                playerAu(3),
                playerAu(4),
                playerAu(5),
                playerAu(6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
