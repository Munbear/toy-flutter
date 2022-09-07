import 'package:flutter/material.dart';
import 'package:go_route_example/page_a.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: ElevatedButton(
                onPressed: () => context.pop(),
                child: const Text('page back'),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: ElevatedButton(
                onPressed: () => context.pushNamed('page1'),
                child: const Text('home page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
