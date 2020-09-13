import 'package:flutter/material.dart';

import './matches_manager.dart';
import './profile_editor.dart';
import './tempresults.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    // Text("This is the find page"),
    // MatchManager(startingMatch: 'Shreya Test'),
    // Profile(),
    // ProfileEditor(),
    MatchManager(startingMatch: 'Shreya Test'),
    Result(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('MA+CH'),
        centerTitle: true,
      ),
      body: _children[_selectedIndex],
      // body: MatchManager(startingMatch: 'Shreya Test'),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.create),
          //   title: Text('Sign Up'),
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('MA+CH'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
      ),
    ));
  }
}
