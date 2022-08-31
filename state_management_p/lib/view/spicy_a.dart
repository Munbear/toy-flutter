import 'package:flutter/material.dart';

class SpicyA extends StatelessWidget {
  const SpicyA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('this is the Spicy_A Screen'),
                  Text('empty'),
                  Text('empty'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
