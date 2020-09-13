import 'package:flutter/material.dart';

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
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
            Text("",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("John Doe", style: TextStyle(fontSize: 36)),
            Text("",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Rice University", style: TextStyle(fontSize: 36)),
            Text("",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("example@gmail.com", style: TextStyle(fontSize: 36)),
            Text("",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("he/him/his", style: TextStyle(fontSize: 36)),
            Text("",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Year: 3", style: TextStyle(fontSize: 36)),
            Text("",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Computer Science", style: TextStyle(fontSize: 36)),
            Text("",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(
                "Looking for peers studying computer science! I love fried rice.",
                style: TextStyle(fontSize: 36)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  onPressed: () {},
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
