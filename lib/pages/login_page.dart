// ignore_for_file: prefer_const_constructors

import 'package:firebase_app/pages/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email = TextEditingController();
  final password = TextEditingController();

  void login() {
    print(email.text);
    print(password.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login'),
            Text('Login to your account'),
            // field to enter email
            TextField(
              controller: email,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            // field to enter password
            TextField(
              controller: password,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            // login button
            ElevatedButton(onPressed: login, child: Text('Login'),),
            // direct to sign up page
            RichText(
              text: TextSpan(
                text: 'Don\'t have an account?',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage())),
                    text: 'Sign up',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
            //image
            Align(
              child: Image.asset(
                'images/login.jpg',
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
