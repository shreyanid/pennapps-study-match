import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import './profile_model.dart';
import './tempresults.dart';

class ProfileEditor extends StatefulWidget {
  ProfileEditor({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _ProfileEditorState();
  }
}

// copy the profile code but turn the text into text inputs
class _ProfileEditorState extends State<ProfileEditor> {
  final _formKey = GlobalKey<FormState>();
  ProfileModel model = ProfileModel();

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
                MyTextFormField(
                  hintText: 'Email',
                  isEmail: true,
                  validator: (String value) {
                    if (!EmailValidator.validate(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    model.email = value;
                  },
                ),
                MyTextFormField(
                  hintText: 'First Name',
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Enter your first name';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    model.firstName = value;
                  },
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
                    color: Colors.blueAccent,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Result(model: this.model)));
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // Container(
                //   // margin: EdgeInsets.all(20.0),
                //   // padding: EdgeInsets.all(20.0),
                //   child: Center(
                //     child: Padding(
                //       padding: EdgeInsets.all(20.0),
                //       child: Column(children: [
                //         Text('First Name' + ' ' + 'Last Name'),
                //         Text('email'),
                //         Text('Pronouns'),
                //         Text('College/University'),
                //         Text('Year'),
                //         Text('Major'),
                //         Text('Bio'),
                //         Column(
                //           children: [Text('Course 1'), Text('Course 2')],
                //         )
                //       ]),
                //     ),
                //   ),
                // ),
              ]),
        ));
  }
}

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isEmail;

  MyTextFormField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        validator: validator,
        onSaved: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
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
