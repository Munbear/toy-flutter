import 'package:flutter/material.dart';
import 'package:state_management_p/model/test_model.dart';
import 'package:state_management_p/view/my_home.dart';
import 'package:provider/provider.dart';

import 'model/seafish_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              FishModel(name: 'Salmon', number: 10, size: 'big'),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              SeaFishModel(name: 'Tuna', tunaNumber: 0, size: 'Middle'),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
