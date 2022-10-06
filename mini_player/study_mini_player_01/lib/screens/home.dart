import 'package:flutter/material.dart';

import 'first.dart';
import 'second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => FirstScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          child: Text('Home'),
          onPressed: () {
            // showModalBottomSheet(
            //   isDismissible: true,
            //   isScrollControlled: true,
            //   enableDrag: true,
            //   context: context,
            //   builder: (context) => FirstScreen(),
            // );
            Navigator.of(context).push(_createRoute());
          },
        ),
      ),
    );
  }
}
