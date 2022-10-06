import 'package:flutter/material.dart';

class RouterScreen2 extends StatefulWidget {
  const RouterScreen2({Key? key}) : super(key: key);

  @override
  State<RouterScreen2> createState() => _RouterScreen2State();
}

class _RouterScreen2State extends State<RouterScreen2> {
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
            color: Colors.green,
            child: Text('Rotouer Screens 2'),
          ),
        ),
      ),
    );
  }
}
