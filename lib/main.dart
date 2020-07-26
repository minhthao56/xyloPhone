import 'package:flutter/material.dart';

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
        child: Column(
          children: <Widget>[Text('ok')],
        ),
      ),
    );
  }
}
