import 'package:flutter/material.dart';

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
        title: Text('practice google login'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 240,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Center(
              child: Text('Google Login'),
            ),
          ),
        ),
      ),
    );
  }
}
