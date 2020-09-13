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
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Profile", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(model.firstName + model.lastName,
                style: TextStyle(fontSize: 20)),
            Text(model.school, style: TextStyle(fontSize: 20)),
            Text(model.email, style: TextStyle(fontSize: 20)),
            Text(model.pronouns, style: TextStyle(fontSize: 20)),
            Text("Year:" + model.year.toString(),
                style: TextStyle(fontSize: 20)),
            Text(model.major, style: TextStyle(fontSize: 20)),
            Text(model.bio, style: TextStyle(fontSize: 20)),
            Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      },
                    
                    child: Text(
                      'Edit Profile',
                      
                      style: TextStyle(
                        color: Colors.white,
                        
                      ),
                    ),
                  ),
            ),
          ],
        ),
      ),
    ));
  }
}
