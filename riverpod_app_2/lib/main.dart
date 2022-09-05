import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'home.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

final valueProvider = Provider<int>((ref) {
  return 14;
});

final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
