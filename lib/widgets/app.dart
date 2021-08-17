import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
        child: Text(
          'Hello Atanu bro!',
          style: TextStyle(
              fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
