import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/counter_provider.dart';

class MyScreen3 extends ConsumerStatefulWidget {
  const MyScreen3({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyScreen3State();
}

class _MyScreen3State extends ConsumerState<MyScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen3 reset'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${ref.watch(counterProvider)}',
              style: const TextStyle(
                fontSize: 50,
                color: Colors.indigo,
              ),
            ),
            ElevatedButton(
              onPressed: () => ref.watch(counterProvider.notifier).initState(),
              child: const Icon(Icons.restore_page),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushNamed('screen1'),
        child: const Icon(Icons.arrow_right),
      ),
    );
  }
}
