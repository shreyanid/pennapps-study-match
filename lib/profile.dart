import 'package:flutter/material.dart';

import './profile_editor.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      RaisedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProfileEditor()));
        },
        child: Text('Edit Profile!'),
      ),
      // IconButton(
      //   icon: Icon(Icons.edit),
      //   tooltip: 'Edit your profile',
      //   onPressed: () {
      //     // ProfileEditor();
      //     Navigator.push(context,
      //         MaterialPageRoute(builder: (context) => ProfileEditor()));
      //   },
      // ),
      Container(
        // margin: EdgeInsets.all(20.0),
        // padding: EdgeInsets.all(20.0),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: [
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

// TO EDIT

// class ProfileEditor extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _ProfileEditorState();
//   }
// }

// // copy the profile code but turn the text into text inputs
// class _ProfileEditorState extends State<ProfileEditor> {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       IconButton(
//         icon: Icon(Icons.done),
//         tooltip: 'Done editing your profile',
//         onPressed: () {
//           // ProfileEditor();
//           Navigator.pop(context);
//         },
//       ),
//       Container(
//         // margin: EdgeInsets.all(20.0),
//         // padding: EdgeInsets.all(20.0),
//         child: Center(
//           child: Padding(
//             padding: EdgeInsets.all(20.0),
//             child: Column(children: [
//               Text('First Name'),
//               Text('Year'),
//               Text('Pronouns'),
//               Text('Major'),
//               Column(
//                 children: [Text('Course 1'), Text('Course 2')],
//               )
//             ]),
//           ),
//         ),
//       ),
//     ]);
//   }
// }
