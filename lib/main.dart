import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  Widget button({int? playNumber, Color? kColor}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: kColor),
        onPressed: () {
          final player = AudioCache();
          player.play('note$playNumber.wav');
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                button(playNumber: 1, kColor: Colors.red),
                button(playNumber: 2, kColor: Colors.orange),
                button(playNumber: 3, kColor: Colors.yellow),
                button(playNumber: 4, kColor: Colors.green),
                button(playNumber: 5, kColor: Colors.teal),
                button(playNumber: 6, kColor: Colors.blue),
                button(playNumber: 7, kColor: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
