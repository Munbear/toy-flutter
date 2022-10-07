import 'package:flutter/material.dart';

class AudioUi extends StatelessWidget {
  final OnTap onTap;
  const AudioUi({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, bottom: 6, top: 15),
          child: Text('Your Libray'),
        ),
        // 여기에 for 문 작성 
      ],
    );
  }
}
