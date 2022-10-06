import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app_2/clock.dart';
import 'package:riverpod_app_2/main.dart';
import 'package:intl/intl.dart';

final stream = Stream.fromIterable([21, 42]);
final futureProvider = FutureProvider<int>((ref) {
  return Future.value(36);
});
final streamProvider = StreamProvider<int>((ref) {
  return Stream.fromIterable([36, 72]);
});

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamAsyncValue = ref.watch(streamProvider);
    return Scaffold(
      body: Center(
        child: streamAsyncValue.when(
          data: (data) => Text('Value: $data'),
          loading: () => CircularProgressIndicator(),
          error: (e, st) => Text('Error: $e'),
        ),
      ),
    );
  }
}

// class MyHomePage extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final currnetTime = ref.watch(clockProvider);
//     final timeFormatted = DateFormat.Hms().format(currnetTime);
//     return Scaffold(
//         body: StreamBuilder<int>(
//             stream: stream,
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.active) {
//                 if (snapshot.hasData) {
//                   return MyWidget(snapshot.data!);
//                 } else if (snapshot.hasError) {
//                   return MyErrorWidget(snapshot.error!);
//                 } else {
//                   return Text('No data');
//                 }
//               } else {
//                 return CircularProgressIndicator();
//               }
//             }));
//   }
// }


// Timer app 
// class MyHomePage extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final currnetTime = ref.watch(clockProvider);
//     final timeFormatted = DateFormat.Hms().format(currnetTime);
//     return Scaffold(
//       body: Center(
//         child: Text(
//           timeFormatted,
//           style: Theme.of(context).textTheme.headline4,
//         ),
//       ),
//     );
//   }
// }




// counter app 
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


