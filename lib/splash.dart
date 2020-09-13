import 'package:flutter/material.dart';

import './profile_editor.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('MA+CH', style: TextStyle(fontSize: 48)),
          Text('', style: TextStyle(fontSize: 18)),
          RaisedButton(
            color: Colors.blueAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileEditor()));
              },
              child: Text('Sign Up', style: TextStyle(fontSize: 36)))
        ]),
      ]),
    ));
  }
}
