import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final Color color;
  final double size;

  const CircleWidget({Key? key, this.color = Colors.white, this.size = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: size,
      height: size,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
