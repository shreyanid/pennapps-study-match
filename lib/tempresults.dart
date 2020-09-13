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
        color: Colors.lightBlue[50],
        margin: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Profile", style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
            Text("", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(model.firstName + model.lastName,
                style: TextStyle(fontSize: 36)),
            Text("", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(model.school, style: TextStyle(fontSize: 36)),
            Text("", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(model.email, style: TextStyle(fontSize: 36)),
            Text("", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(model.pronouns, style: TextStyle(fontSize: 36)),
            Text("", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Year:" + model.year.toString(), style: TextStyle(fontSize: 36)),
            Text("", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(model.major, style: TextStyle(fontSize: 36)),
            Text("", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(model.bio, style: TextStyle(fontSize: 36)),
            Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
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
      ),
    ));
  }
}
