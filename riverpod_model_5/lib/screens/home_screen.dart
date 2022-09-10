import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/book_provider.dart';

class HomeScreen3 extends ConsumerStatefulWidget {
  const HomeScreen3({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends ConsumerState<HomeScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('riverpod model'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.watch(booksProvider).title,
              style: TextStyle(fontSize: 40),
            ),
            Text(
              ref.watch(booksProvider).writer,
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '${ref.watch(booksProvider).price} :Euro',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '${ref.watch(booksProvider).inventory}',
              style: TextStyle(fontSize: 18),
            ),
            Text(ref.watch(booksProvider).title),
          ],
        ),
      ),
    );
  }
}
