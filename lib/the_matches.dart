import 'package:flutter/material.dart';

import 'profile_model.dart';

class TheMatches extends StatelessWidget {
  final ProfileModel model;

  TheMatches({this.model});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.person_pin),
              title: Text('Jennifer Adams'), // + model.firstName),
              subtitle: Text('CS @ Rice'),
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
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.person_pin),
              title: Text('Shreya Nidadavolu'), // + model.firstName),
              subtitle: Text('CS @ Rice'),
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
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.person_pin),
              title: Text('Michelle Li'), // + model.firstName),
              subtitle: Text('CS @ Rice'),
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
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.person_pin),
              title: Text('Kuhu Halder'), // + model.firstName),
              subtitle: Text('CS @ Rice'),
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
      ),
    ]);
  }
}
