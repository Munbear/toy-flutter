import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyPageC extends StatelessWidget {
  const MyPageC({super.key});

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
              color: Colors.blue,
              child: ElevatedButton(
                onPressed: () => context.pop(),
                child: const Text(
                  'Page back',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: ElevatedButton(
                onPressed: () => context.pushNamed('home'),
                child: const Text(
                  'Page C',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
