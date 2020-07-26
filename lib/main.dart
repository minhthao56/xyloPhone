import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: PagePhone(),
      ),
    ),
  );
}

class PagePhone extends StatelessWidget {
  const PagePhone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: Colors.white,
          child: Center(
            child: FlatButton(
              child: Text("Click me!"),
              onPressed: () {
                print('ok');
                final player = AudioCache();
                player.play('note1.wav');
              },
            ),
          )),
    );
  }
}
