import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final valueProvider = Provider<int>((ref) {
  return 0;
});

final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

class MyCounter extends StateNotifier<int> {
  MyCounter() : super(0);

  void increment() => state++;
  void decrement() => state--;
  void initCount() => state = 0;
}

final myCounterStateNotifierProvider =
    StateNotifierProvider<MyCounter, int>((ref) {
  return MyCounter();
});
