import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Login 3'),
      ),
      body: Center(
        child: Container(
          width: 240,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: InkWell(
            onTap: signInWithGoogle,
            child: const Center(
              child: Text('Login With Google'),
            ),
          ),
        ),
      ),
    );
  }
}
