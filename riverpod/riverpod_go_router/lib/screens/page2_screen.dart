import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_go_router/providers/count_provider.dart';

class Page2Screen extends ConsumerStatefulWidget {
  const Page2Screen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Page2ScreenState();
}

class _Page2ScreenState extends ConsumerState<Page2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("P2")),
      body: Center(
        child: Text("${ref.watch(counterProvider)}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).increment(),
      ),
    );
  }
}
