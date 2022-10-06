import 'package:riverpod/riverpod.dart';

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state++;

  void decrement() => state--;

  void initState() => state = 0;
}

final counterProvider = StateNotifierProvider<Counter, int>((ref) {
  return Counter();
});
