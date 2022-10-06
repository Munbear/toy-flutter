import 'package:flutter/material.dart';

class TestModelScreen extends StatefulWidget {
  const TestModelScreen({Key? key}) : super(key: key);

  @override
  State<TestModelScreen> createState() => _TestModelScreenState();
}

class _TestModelScreenState extends State<TestModelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Text(''),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Text(''),
          ),
        ],
      ),
    );
  }
}
