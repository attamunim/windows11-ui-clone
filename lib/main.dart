import 'package:flutter/material.dart';
import 'package:windows1/desktop.dart';

void main() {
  runApp(Windows1());
}

class Windows1 extends StatefulWidget {
  Windows1({Key? key}) : super(key: key);

  @override
  _Windows1State createState() => _Windows1State();
}

class _Windows1State extends State<Windows1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Desktop(),
      // Desktop(),
      debugShowCheckedModeBanner: false,
    );
  }
}
