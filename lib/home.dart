import 'package:flutter/material.dart';
import 'package:study_match/profile.dart';

import './matches_manager.dart';
import './profile.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;

  final List<Widget> _children = [
    // Text("This is the find page"),
    MatchManager(startingMatch: 'Shreya Test'),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MA+CH'),
        centerTitle: true,
      ),
      body: _children[_selectedIndex],
      // body: MatchManager(startingMatch: 'Shreya Test'),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.filter_list),
          //   title: Text('Find'),
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
    );
  }
}
