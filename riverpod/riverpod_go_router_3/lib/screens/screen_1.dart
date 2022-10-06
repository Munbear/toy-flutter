import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/user_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Information'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name: ${ref.watch(userProvider).name}',
              style: const TextStyle(fontSize: 40),
            ),
            Text(
              'Age: ${ref.watch(userProvider).age}',
              style: const TextStyle(fontSize: 40),
            ),
            Text(
              'Gender: ${ref.watch(userProvider).gender}',
              style: const TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
