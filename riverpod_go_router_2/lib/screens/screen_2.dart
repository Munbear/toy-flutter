import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';
import '../providers/counter_provider.dart';

class MyScreen2 extends ConsumerStatefulWidget {
  const MyScreen2({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyScreen2State();
}

class _MyScreen2State extends ConsumerState<MyScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen2 minus'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${ref.watch(counterProvider)}',
              style: const TextStyle(
                fontSize: 50,
                color: Colors.red,
              ),
            ),
            ElevatedButton(
              onPressed: () => ref.watch(counterProvider.notifier).decrement(),
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_right),
          onPressed: () => context.pushNamed('screen3')),
    );
  }
}
