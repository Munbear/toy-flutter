import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  // 상태 관리
  const MyWidget({Key? key}) : super(key: key);
  @override
  State<MyWidget> createState() => _MyWidgetState();
}
class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.account_circle, size: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Flutter McFlutter',
                          style: Theme.of(context).
                          textTheme.headline5,
                        ),
                        const Text('Experienced App Developer'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: const [],
              ),
              const SizedBox(height: 16),
              Row(
                children: const [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class BlueBox extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         border: Border.all(),
//       ),
//     );
//   }
// }
