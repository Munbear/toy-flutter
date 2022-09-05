import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app_2/clock.dart';
import 'package:riverpod_app_2/main.dart';
import 'package:intl/intl.dart';

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currnetTime = ref.watch(clockProvider);
    final timeFormatted = DateFormat.Hms().format(currnetTime);
    return Scaffold(
      body: Center(
        child: Text(
          timeFormatted,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}



// class MyHomePage extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final counter = ref.watch(counterStateProvider);
//     ref.listen<StateController<int>>(counterStateProvider.state,
//         (previos, current) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Value: ${current.state}')),
//       );
//     });
//     return Scaffold(
//       body: Center(
//         child: Text(
//           'Value: $counter',
//           style: Theme.of(context).textTheme.headline4,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => ref.read(counterStateProvider.notifier).state++,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }


