import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  // Declare variables for phone number and amount
  String _phoneNumber, _amount;

  // Create a form key to validate the form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Payment'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (input) {
                if (input.isEmpty) {
                  return 'Please enter a phone number';
                }
                return null;
              },
              onSaved: (input) => _phoneNumber = input,
              decoration: InputDecoration(
                labelText: 'Phone Number',
              ),
            ),
            TextFormField(
              validator: (input) {
                if (input.isEmpty) {
                  return 'Please enter an amount';
                }
                return null;
              },
              onSaved: (input) => _amount = input,
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              keyboardType: TextInputType.number,
            ),
            RaisedButton(
              onPressed: makePayment,
              child: Text('Make Payment'),
            ),
          ],
        ),
      ),
    );
  }

  // Function to make payment
  void makePayment() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        // Store payment information in Firestore database
        await FirebaseFirestore.instance.collection('payments').add({
          'phoneNumber': _phoneNumber,
          'amount': _amount,
          'userId': FirebaseAuth.instance.currentUser.uid,
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Payment successful'),
          ),
        );
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
      title: 'Make Payment',
      home: PaymentPage(),
    );
  }
}
