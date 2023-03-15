import 'package:flutter/material.dart';
import './login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Declare variables for email and password
  String _email, _password;

  // Create a form key to validate the form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (input) {
                if (input.isEmpty) {
                  return 'Please enter an email';
                }
                return null;
              },
              onSaved: (input) => _email = input,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextFormField(
              validator: (input) {
                if (input.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              onSaved: (input) => _password = input,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            RaisedButton(
              onPressed: signUp,
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }

  // Function to sign up user
  void signUp() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: _email, password: _password);
        // Store user information in Firestore database
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user.uid)
            .set({
          'email': _email,
        });
        Navigator.pop(context);
      } catch (e) {
        print(e.message);
      }
    }
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      home: SignUpPage(),
    );
  }
}
