import "package:flutter/material.dart";
import 'screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KOKIRI',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Color(0xff000000), fontSize: 16),
          iconTheme: IconThemeData(color: Color(0xff9B9B9B)),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
