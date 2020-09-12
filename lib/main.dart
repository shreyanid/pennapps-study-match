import 'package:flutter/material.dart';

import './navbar.dart';
import './matches_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          accentColor: Colors.deepPurpleAccent,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('MA+CH'),
            centerTitle: true,
          ),
          body: MatchManager(startingMatch: 'Shreya Test'),
          bottomNavigationBar: NavBar(),
        ));
  }
}
