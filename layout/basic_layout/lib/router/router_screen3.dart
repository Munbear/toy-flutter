import 'package:flutter/material.dart';

class RouteScreen3 extends StatefulWidget {
  const RouteScreen3({Key? key}) : super(key: key);

  @override
  State<RouteScreen3> createState() => _RouteScreen3State();
}

class _RouteScreen3State extends State<RouteScreen3> {
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
            color: Colors.blue,
            child: Text('Router Screen 3'),
          ),
        ),
      ),
    );
  }
}
