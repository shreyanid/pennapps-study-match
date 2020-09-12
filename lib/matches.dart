import 'package:flutter/material.dart';

class Matches extends StatelessWidget {
  // can receive external data

  final List<String> matches;

  Matches([this.matches = const []]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: matches
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  // Image.asset('assets/name-of-image.jpg'),
                  Text(element)
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
