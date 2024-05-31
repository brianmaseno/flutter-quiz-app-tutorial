import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  String _country = '';
  String _phoneNumber = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),

      /// Wraps the content of the page in padding.
      ///
      /// This widget provides padding around the content of the page, ensuring
      /// that the content is not flush against the edges of the screen.
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'First Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your first name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _firstName = value!;
                },
              ),

              /// Allows the user to enter their last name.
              ///
              /// The [TextFormField] widget is used to collect the user's last name. It includes a label and a validator to ensure the field is not left empty.
              /// The value entered by the user is saved to the `_lastName` variable when the form is submitted.
              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your last name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _lastName = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Another Field'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a value';
                  }
                  return null;
                },
                onSaved: (value) {
                
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Country'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your country';
                  }
                  return null;
                },
                onSaved: (value) {
                  _country = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phoneNumber = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Perform sign up logic with the form data
                    // _firstName, _lastName, _country, _phoneNumber, _password
                  }
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
