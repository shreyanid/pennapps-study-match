import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './profile_model.dart';
import './tempresults.dart';
import 'dart:async';

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
  final db = FirebaseFirestore.instance;
//pronouns
  final pronounList = ['she/her/hers', 'he/him/his', 'they/them/theirs'];

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
                MyTextFormField(
                  hintText: 'Last Name',
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Enter your last name';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    model.lastName = value;
                  },
                ),
                MyTextFormField(
                  hintText:
                      'Pronouns in format she/her/hers, they/them/theirs or he/him/his',
                  validator: (value) {
                    if (pronounList.contains(value)) {
                      return 'Please enter valid pronouns';
                    }
                  },
                  onSaved: (String value) {
                    model.pronouns = value;
                  },
                ),
                MyTextFormField(
                  hintText:
                      'Full name of College/University with first letters capitalized (ex: Rice University)',
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Not a valid college/university';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    model.school = value;
                  },
                ),
                MyTextFormField(
                  hintText: '# Years in School (ie 1st year = 1)',
                  validator: (String value) {
                    if (int.parse(value).isNaN) {
                      return 'Not a valid number';
                      // try catch?
                      // Another exception was thrown: FormatException: Invalid radix-10 number (at character 1)
                    }
                    return null;
                  },
                  onSaved: (value) {
                    model.year = int.parse(value);
                  },
                ),
                MyTextFormField(
                  hintText: 'Major',
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter a valid major';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    model.major = value;
                  },
                ),
                MyTextFormField(
                  hintText:
                      'Bio - add info you wish to display to potential matches!',
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please do not leave blank :(';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    model.bio = value;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () async {
                      await db.collection("users").add({
                        "firstName": model.firstName,
                        "lastName": model.lastName,
                        "pronouns": model.pronouns,
                        "university": model.school,
                        "email": model.email,
                        "year": model.year,
                        "major": model.major,
                        "bio": model.bio,
                      });

                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Result(model: this.model)));
                      }

                      // async {
                      //   await db.collection("users").add(
                      //     {
                      //       "firstName": model.firstName,
                      //       "lastName": model.lastName,
                      //       "pronouns": model.pronouns,
                      //       "university": model.school,
                      //       "email": model.email,
                      //       "year": model.year,
                      //       "major": model.major,
                      //       "bio": model.bio,
                      //     }
                      //   );
                      // }
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
