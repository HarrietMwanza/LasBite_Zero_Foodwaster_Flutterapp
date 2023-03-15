import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.emailAddress,
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
              obscureText: true,
              validator: (input) {
                if (input.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
              onSaved: (input) => _password = input,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            RaisedButton(
              onPressed: login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  void login() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _email,
          password: _password,
        );
        String uid = userCredential.user.uid;
        await FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .set({'email': _email});
        Navigator.of(context).pushReplacementNamed('/home');
      } catch (e) {
        print(e.message);
      }
    }
  }
}
