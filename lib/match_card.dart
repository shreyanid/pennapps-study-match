import 'package:flutter/material.dart';

import './profile_model.dart';

class MatchCard extends StatelessWidget {
  // MatchCard({@required this.name, @required this.major});
  // MatchCard({@required this.name});
  // final name;
  // final major;

  final ProfileModel model;

  MatchCard({this.model});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.person_pin),
            title: Text('Name: '), // + model.firstName),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('READ MORE'),
                onPressed: () {/* ... */},
              ),
              FlatButton(
                child: const Text('CONNECT'),
                onPressed: () {/* ... */},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
