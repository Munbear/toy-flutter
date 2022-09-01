import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'counter/view/counter_page.dart';
import 'counter_observer.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const CounterApp());
}

class CounterApp extends MaterialApp {
  const CounterApp({super.key}) : super(home: const CounterPage());
}
