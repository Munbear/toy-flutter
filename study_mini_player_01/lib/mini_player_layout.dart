import 'package:flutter/material.dart';

class MiniPlayerLayout extends StatefulWidget {
  const MiniPlayerLayout({super.key});

  @override
  State<MiniPlayerLayout> createState() => _MiniPlayerLayoutState();
}

class _MiniPlayerLayoutState extends State<MiniPlayerLayout> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 5),
    vsync: this,
  )..upperBound;

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset(0.0, 1.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.ease,
  ));

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
