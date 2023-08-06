import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("페이지 1");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TestPage2())),
              child: const Text("move to page 2"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("back to main"),
            ),
          ],
        ),
      ),
    );
  }
}

class TestPage2 extends StatefulWidget {
  const TestPage2({super.key});

  @override
  State<TestPage2> createState() => _TestPage2State();
}

class _TestPage2State extends State<TestPage2> {
  @override
  Widget build(BuildContext context) {
    print("페이지 2");
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          onPressed: () => Navigator.pop(context),
          child: const Text("back to page 1"),
        ),
      ),
    );
  }
}
