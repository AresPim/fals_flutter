import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String _username, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a username';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Username*',
                ),
                onSaved: (value) => _username = value,
              ),
              SizedBox(height: 16.0),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Password*',
                ),
                obscureText: true,
                onSaved: (value) => _password = value,
              ),
              SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text('Remember me'),
                ],
              ),
              SizedBox(height: 16.0),
              Center(
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      // Perform sign up logic here
                    }
                  },
                  child: Text('Sign Up'),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Already have an account?'),
                    SizedBox(width: 8.0),
                    GestureDetector(
                      onTap: () {
                        // Navigate to login page
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('or continue with'),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        // Sign up with Facebook
                      },
                      child: Image.asset(
                        'assets/images/facebook.png',
                        height: 32.0,
                      ),
                    ),
                    SizedBox(width: 16.0),
                    GestureDetector(
                      onTap: () {
                        // Sign up with Google
                      },
                      child: Image.asset(
                        'assets/images/google.png',
                        height: 