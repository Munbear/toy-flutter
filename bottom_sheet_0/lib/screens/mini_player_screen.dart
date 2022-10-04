import 'package:flutter/material.dart';

class MiniPlayerScreen extends StatefulWidget {
  const MiniPlayerScreen({super.key});

  @override
  State<MiniPlayerScreen> createState() => _MiniPlayerScreenState();
}

class _MiniPlayerScreenState extends State<MiniPlayerScreen> {
  // void pageRouteBack() {
  //   Navigator.pop();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              // onLongPressDown: () {
              //   pageRouteBack();
              // },
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Text('here is video'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text('here is video'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
