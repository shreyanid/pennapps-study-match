import 'package:flutter/material.dart';

import './matches.dart';

class MatchManager extends StatefulWidget {
  final String startingMatch;

  MatchManager({this.startingMatch}) {
    print('[MatchManager] constructor');
  }

  @override
  State<StatefulWidget> createState() {
    return _MatchManagerState();
  }
}

class _MatchManagerState extends State<MatchManager> {
  List<String> _matches = [];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: Center(
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _matches.add('Shreya');
              });
            },
            child: Text('Add New Person'),
          ),
        ),
      ),
      Matches(_matches)
    ]);
  }
}
