// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_app/pages/login_page.dart';
import 'package:firebase_app/pages/signup_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Text('Welcome', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),),
            SizedBox(
              height: 20,
            ),
            Text('Flutter provides extraordinary opportunities'),
            SizedBox(
              height: 100,
            ),
            // picture
            Align(
              alignment: Alignment.center,
              child: Image.asset('images/flutter.jpg'),
            ),
            // login button
            SizedBox(
              height: 20,
            ),
            TextButton(
                style:
                    TextButton.styleFrom(side: BorderSide(color: Colors.black54, width: 2,)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text('Login')),
            SizedBox(
              height: 10,
            ),
            // sign in button
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                },
                child: Text('Sign In', style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
