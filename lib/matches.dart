import 'package:flutter/material.dart';

import './match_card.dart';

class Matches extends StatelessWidget {
  // can receive external data

  final List<String> matches;
  //final List<List<String>> matches;

  Matches(this.matches);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: matches
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  // Image.asset('assets/name-of-image.jpg'),
                  Text(element),
                  // MatchCard(name: element, major:),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
