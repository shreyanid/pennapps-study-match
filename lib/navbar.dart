import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBarState();
  }
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 1;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'The show me page',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'The matches page',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'The user profile page',
  //     style: optionStyle,
  //   ),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.filter_list),
          title: Text('Find'),
        ),
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
    );
  }
}
