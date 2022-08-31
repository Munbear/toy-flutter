import 'package:flutter/material.dart';
import 'package:state_management_p/view/spicy_a.dart';

class High extends StatelessWidget {
  const High({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('this is the High Screen'),
                  Text('empty'),
                  Text('empty'),
                ],
              ),
            ),
          ),
        ),
        SpicyA(),
      ],
    );
  }
}
