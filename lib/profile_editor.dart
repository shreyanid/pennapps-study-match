import 'package:flutter/material.dart';

class ProfileEditor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileEditorState();
  }
}

// copy the profile code but turn the text into text inputs
class _ProfileEditorState extends State<ProfileEditor> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MA+CH'),
        centerTitle: true,
      ),
      body: Column(children: [
        RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Done editing!'),
        ),
        // Icon(Icons.done),
        // IconButton(
        //   icon: Icon(Icons.done),
        //   tooltip: 'Done editing your profile',
        //   onPressed: () {
        //     Navigator.pop(context);
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
      ]),
    );
  }
}

//     return Column(children: [
//       RaisedButton(
//         onPressed: () {
//           Navigator.pop(context);
//         },
//         child: Text('Done editing!'),
//       ),
//       // Icon(Icons.done),
//       // IconButton(
//       //   icon: Icon(Icons.done),
//       //   tooltip: 'Done editing your profile',
//       //   onPressed: () {
//       //     Navigator.pop(context);
//       //   },
//       // ),
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
