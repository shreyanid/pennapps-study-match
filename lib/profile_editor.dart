import 'package:flutter/material.dart';

class ProfileEditor extends StatefulWidget {
  ProfileEditor({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _ProfileEditorState();
  }
}

// copy the profile code but turn the text into text inputs
class _ProfileEditorState extends State<ProfileEditor> {
  final String email;
  final String fname;
  final _formKey = GlobalKey<FormState>();
// TextEditingController _textInputController = TextEditingController();
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MA+CH'),
        centerTitle: true,
      ),
      body: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
           // controller: _textInputController,
              // autocorrect: true,
            decoration: InputDecoration(hintText: 'School Email'),
            keyboardType: TextInputType.emailAddress,
          ),
        TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
   //         controller: _textInputController,
              // autocorrect: true,
            decoration: InputDecoration(hintText: 'First Name'),
            keyboardType: TextInputType.name,
          ),
        // TextFormField(
        //     validator: (value) {
        //       if (value.isEmpty) {
        //         return 'Please enter some text';
        //       }
        //       return null;
        //     },
        //     controller: _textInputController,
        //       // autocorrect: true,
        //     decoration: InputDecoration(hintText: 'Last Name'),
        //     keyboardType: TextInputType.name,
        //   ),
        // TextFormField(
        //     validator: (value) {
        //       if (value.isEmpty) {
        //         return 'Please enter some text';
        //       }
        //       return null;
        //     },
        //     controller: _textInputController,
        //       // autocorrect: true,
        //     decoration: InputDecoration(hintText: 'Pronouns'),
        //   ),
        // TextFormField(
        //     validator: (value) {
        //       if (value.isEmpty) {
        //         return 'Please enter some text';
        //       }
        //       return null;
        //     },
        //     controller: _textInputController,
        //       // autocorrect: true,
        //     decoration: InputDecoration(hintText: 'College/University'),
        //   ),
        // TextFormField(
        //     validator: (value) {
        //       if (value.isEmpty) {
        //         return 'Please enter some text';
        //       }
        //       return null;
        //     },
        //     controller: _textInputController,
        //       // autocorrect: true,
        //     decoration: InputDecoration(hintText: 'Year in college (1st year should type "1"'),
        //   ),
        // TextFormField(
        //     validator: (value) {
        //       if (value.isEmpty) {
        //         return 'Please enter some text';
        //       }
        //       return null;
        //     },
        //     controller: _textInputController,
        //       // autocorrect: true,
        //     decoration: InputDecoration(hintText: 'Major'),
        //   ),
        // TextFormField(
        //     validator: (value) {
        //       if (value.isEmpty) {
        //         return 'Please enter some text';
        //       }
        //       return null;
        //     },
        //     controller: _textInputController,
        //       // autocorrect: true,
        //     decoration: InputDecoration(hintText: 'Bio'),
        //     keyboardType: TextInputType.multiline,
        //   ),
        
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  // Process data.
                }
              },
              child: Text('Submit'),
            ),
          ),
        Container(
          // margin: EdgeInsets.all(20.0),
          // padding: EdgeInsets.all(20.0),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              
              child: Column(children: [
                Text('First Name' + ' ' + 'Last Name'),
                Text('email'),
                Text('Pronouns'),
                Text('College/University'),
                Text('Year'),
                Text('Major'),
                Text('Bio'),
                Column(
                  children: [Text('Course 1'), Text('Course 2')],
                )
              ]),
            ),
          ),
        ),
      ]),
      )
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('MA+CH'),
//         centerTitle: true,
//       ),
//       body: Column(children: [
//         RaisedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Done editing!'),
//         ),
//         // Icon(Icons.done),
//         // IconButton(
//         //   icon: Icon(Icons.done),
//         //   tooltip: 'Done editing your profile',
//         //   onPressed: () {
//         //     Navigator.pop(context);
//         //   },
//         // ),
//         Container(
//           // margin: EdgeInsets.all(20.0),
//           // padding: EdgeInsets.all(20.0),
//           child: Center(
//             child: Padding(
//               padding: EdgeInsets.all(20.0),
//               child: Column(children: [
//                 Text('First Name'),
//                 Text('Year'),
//                 Text('Pronouns'),
//                 Text('Major'),
//                 Text('Bio'),
//                 Column(
//                   children: [Text('Course 1'), Text('Course 2')],
//                 )
//               ]),
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
// }

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
