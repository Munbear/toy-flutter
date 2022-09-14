import 'package:flutter/material.dart';

class RouterVideo extends StatefulWidget {
  const RouterVideo({Key? key}) : super(key: key);

  @override
  State<RouterVideo> createState() => _RouterVideoState();
}

class _RouterVideoState extends State<RouterVideo> {
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
            color: Colors.orange,
            child: Text('Router Video Screen'),
          ),
        ),
      ),
    );
  }
}
