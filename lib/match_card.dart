import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  // MatchCard({@required this.name, @required this.major});
  // MatchCard({@required this.name});
  // final name;
  // final major;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Name'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {/* ... */},
              ),
              FlatButton(
                child: const Text('LISTEN'),
                onPressed: () {/* ... */},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
