import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: PagePhone(),
      ),
    ),
  );
}

class PagePhone extends StatelessWidget {
  const PagePhone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void hanldeNote(int number) {
      final player = AudioCache();
      player.play('note$number.wav');
    }

    Expanded bulidKey({Color color, int num}) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            hanldeNote(num);
          },
        ),
      );
    }

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          bulidKey(color: Colors.red, num: 1),
          bulidKey(color: Colors.orange, num: 2),
          bulidKey(color: Colors.yellow, num: 3),
          bulidKey(color: Colors.green, num: 4),
          bulidKey(color: Colors.blue, num: 5),
          bulidKey(color: Colors.indigo, num: 6),
          bulidKey(color: Colors.purple, num: 7)
        ],
      ),
    );
  }
}
