import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('mini palyer screen 1')),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.green,
          child: Center(
            child: Text('Mini Palyer example screen 1 '),
          ),
        ),
      ),
    );
  }
}
