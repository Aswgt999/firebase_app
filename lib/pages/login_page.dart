// ignore_for_file: prefer_const_constructors

import 'package:firebase_app/pages/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

  void login() async{
   try{
   var res =  await FirebaseAuth.instance.signInWithEmailAndPassword(
       email: email.text,
       password: password.text,
     );
   print(res.user);

   }catch(e){
     print(e);

   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text('Login to your account'),
            SizedBox(
              height: 30,
            ),
            // field to enter email
            TextField(
              controller: email,
              decoration: InputDecoration(
                  labelText: 'Email',
                  border:
                      OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            // field to enter password
            TextField(
              controller: password,
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 50,
            ),
            // login button
            ElevatedButton(
              onPressed: login,
              child: Text('Login'),
            ),
            SizedBox(
              height: 30,
            ),
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
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
            //image
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'images/login.jpg',
                width: 400,
                height: 400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
