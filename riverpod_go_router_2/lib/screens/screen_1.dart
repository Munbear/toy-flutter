import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/counter_provider.dart';

class MyScreen1 extends ConsumerStatefulWidget {
  const MyScreen1({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyScreen1State();
}

class _MyScreen1State extends ConsumerState<MyScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen1 Plus'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${ref.watch(counterProvider)}',
              style: const TextStyle(
                fontSize: 50,
                color: Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: () => ref.watch(counterProvider.notifier).increment(),
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushNamed('screen2'),
        child: const Icon(Icons.arrow_right),
      ),
    );
  }
}
