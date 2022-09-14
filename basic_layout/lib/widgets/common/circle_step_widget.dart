import 'package:flutter/material.dart';

class NextStepCircle extends StatelessWidget {
  final Color color;
  final double size;

  const NextStepCircle({Key? key, this.color = Colors.black12, this.size = 18})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedContainer(
        duration: Duration(microseconds: 300),
        width: size,
        height: size,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: Center(
          child: Text(
            'ㄱ',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
