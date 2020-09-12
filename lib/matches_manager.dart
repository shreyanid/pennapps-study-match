import 'package:flutter/material.dart';

import './matches.dart';

class MatchManager extends StatefulWidget {
  final String startingMatch;

  MatchManager({this.startingMatch});

  @override
  State<StatefulWidget> createState() {
    return _MatchManagerState();
  }
}

class _MatchManagerState extends State<MatchManager> {
  List<String> _matches = [];
  TextEditingController _textInputController = TextEditingController();

  @override
  void initState() {
    _matches.add(widget.startingMatch);
    super.initState();
  }

  void _addMatch(String match) {
    setState(() {
      _matches.add(match);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: Center(
          child: Column(children: [
            TextField(
              controller: _textInputController,
              // autocorrect: true,
              decoration: InputDecoration(hintText: 'Enter a Name here'),
            ),
            RaisedButton(
              color: Theme.of(context).accentColor,
              onPressed: () {
                _addMatch(_textInputController.text);
                _textInputController.clear();
              },
              child: Text('Add This Person'),
            ),
          ]),
        ),
      ),
      Matches(_matches)
    ]);
  }
}
