import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app3/count.dart';

class CounterWidget extends ConsumerWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterRead = ref.read(myCounterStateNotifierProvider.notifier);
    final counterState = ref.watch(myCounterStateNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Counter widget'),
      ),
      body: Center(
        child: Text(
          'Value: $counterState',
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: '111',
              onPressed: () => counterRead.increment(),
              child: const Icon(
                Icons.add,
              ),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              heroTag: '222',
              onPressed: () => counterRead.decrement(),
              child: const Icon(
                Icons.remove,
              ),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              heroTag: '333',
              onPressed: () => counterRead.initCount(),
              child: const Icon(
                Icons.refresh,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
