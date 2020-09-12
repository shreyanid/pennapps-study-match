import 'package:flutter/material.dart';

import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          accentColor: Colors.deepPurpleAccent,
        ),
        home: Home());
  }
}
