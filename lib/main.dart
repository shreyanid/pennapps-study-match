import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

import './splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(context) {
    return MaterialApp(home: SplashScreen());
    // Home());
  }
}

// @override
//   Widget build(context) {
//     return FutureBuilder(
//       // Initialize FlutterFire:
//       future: _initialization,
//       builder: (context, snapshot) {
//         // Check for errors
//         if (snapshot.hasError) {
//           return Text('Initialization failed');
//         }

//         // Once complete, show your application
//         if (snapshot.connectionState == ConnectionState.done) {
//           return Home();
//         }
//         // Otherwise, show something whilst waiting for initialization to complete
//         return Text('');
//       },
//     );
//   }

// @override
//   Widget build(context) {
//     return MaterialApp(
//         theme: ThemeData(
//           primarySwatch: Colors.cyan,
//           accentColor: Colors.deepPurpleAccent,
//         ),
//         home: Home());
//   }
