import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/count_provider.dart';

class Page1Screen extends ConsumerStatefulWidget {
  const Page1Screen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Page1ScreenState();
}

class _Page1ScreenState extends ConsumerState<Page1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("P1")),
      body: Center(
        child: Text("${ref.watch(counterProvider)}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushNamed('page2'),
      ),
    );
  }
}
