import 'package:flutter/material.dart';
import 'profile_model.dart';

class Result extends StatelessWidget {
  final ProfileModel model;

  Result({this.model});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Successful')),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Profile", style: TextStyle(fontSize: 22)),
            Text(model.firstName + model.lastName,
                style: TextStyle(fontSize: 18)),
            Text(model.school, style: TextStyle(fontSize: 18)),
            Text(model.email, style: TextStyle(fontSize: 18)),
            Text(model.pronouns, style: TextStyle(fontSize: 18)),
            Text("Year:" + model.year.toString(),
                style: TextStyle(fontSize: 18)),
            Text(model.major, style: TextStyle(fontSize: 18)),
            Text(model.bio, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    ));
  }
}
