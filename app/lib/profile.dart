import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Declare variables for user data
  String _displayName, _email, _about, _imageUrl;

  // Create a form key to validate the form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Create a Firebase storage instance
  final FirebaseStorage _storage = FirebaseStorage.instance;

  // Create an ImagePicker instance
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    // Get the user data from Firebase Authentication and Firestore
    User user = FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        setState(() {
          _displayName = documentSnapshot.data()['displayName'];
          _email = documentSnapshot.data()['email'];
          _about = documentSnapshot.data()['about'];
          _imageUrl = documentSnapshot.data()['imageUrl'];
        });
      } else {
        print('Document does not exist');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            InkWell(
              onTap: () => _selectImage(context),
              child: CircleAvatar(
                radius: 75.0,
                backgroundImage: _imageUrl != null
                    ? NetworkImage(_imageUrl)
                    : AssetImage('assets/default_profile_image.png'),
              ),
            ),
            TextFormField(
              initialValue: _displayName,
              validator: (input) {
                if (input.isEmpty) {
                  return 'Please enter a display name';
                }
                return null;
              },
              onSaved: (input) => _displayName = input,
              decoration: InputDecoration(
                labelText: 'Display Name',
              ),
            ),
            TextFormField(
              initialValue: _email,
              validator: (input) {
               
