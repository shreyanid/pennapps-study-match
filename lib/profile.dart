import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        // margin: EdgeInsets.all(20.0),
        // padding: EdgeInsets.all(20.0),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: [
              Icon(Icons.edit),
              Text('First Name'),
              Text('Year'),
              Text('Pronouns'),
              Text('Major'),
              Column(
                children: [Text('Course 1'), Text('Course 2')],
              )
            ]),
          ),
        ),
      ),
    ]);
  }
}
