import 'package:flutter/material.dart';

class RouterShortScreen extends StatefulWidget {
  const RouterShortScreen({Key? key}) : super(key: key);

  @override
  State<RouterShortScreen> createState() => _RouterShortScreenState();
}

class _RouterShortScreenState extends State<RouterShortScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            child: Text('Shorts Router Screen'),
          ),
        ),
      ),
    );
  }
}
