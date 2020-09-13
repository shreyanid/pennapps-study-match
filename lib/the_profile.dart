import 'package:flutter/material.dart';

import './profile_editor.dart';

class TheProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Profile",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text("",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Text("Name: John Doe", style: TextStyle(fontSize: 20)),
            Text("",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            Text("School: Rice University", style: TextStyle(fontSize: 20)),
            Text("",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            Text("Email: example@gmail.com", style: TextStyle(fontSize: 20)),
            Text("",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            Text("Pronouns: he/him/his", style: TextStyle(fontSize: 20)),
            Text("",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            Text("Year: 3", style: TextStyle(fontSize: 20)),
            Text("",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            Text("Major: Computer Science", style: TextStyle(fontSize: 20)),
            Text("",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            Text(
                "Bio: Looking for peers studying computer science! I love fried rice.",
                style: TextStyle(fontSize: 20)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileEditor()));
                  },
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
