// ignore_for_file: prefer_const_constructors

import 'package:firebase_app/pages/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPass = TextEditingController();

  void signUp() {
    print(username.text);
    print(email.text);
    print(password.text);
    print(confirmPass.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign up'),
            Text('Create an account. It\'s free'),
            // field to enter username
            TextField(
              controller: username,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            // field to enter email
            TextField(
              controller: email,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            // field to enter a new password
            TextField(
              controller: password,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            // field to reenter password to confirm password
            TextField(
              controller: confirmPass,
              decoration: InputDecoration(labelText: 'Confirm Password'),
            ),
            // sign up button
            TextButton(onPressed: signUp, child: Text('Sign up')),
            // redirect to Login if account exists
            RichText(
              text: TextSpan(
                text: 'Already have an account?',
                children: <TextSpan>[
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage())),
                    text: 'Login',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
