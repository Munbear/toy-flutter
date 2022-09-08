import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'screens/screen_1.dart';
import 'screens/screen_2.dart';
import 'screens/screen_3.dart';

class RouterNotifier extends ChangeNotifier {
  RouterNotifier(ProviderRef<GoRouter> ref);

  List<GoRoute> get _routes => [
        GoRoute(
          path: '/',
          name: 'screen1',
          builder: (context, _) => const MyScreen1(),
        ),
        GoRoute(
          path: '/screen2',
          name: 'screen2',
          builder: (context, _) => const MyScreen2(),
        ),
        GoRoute(
          path: '/screen3',
          name: 'screen3',
          builder: (context, _) => const MyScreen3(),
        ),
      ];
}

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);

  return GoRouter(
    debugLogDiagnostics: true,
    refreshListenable: router,
    routes: router._routes,
  );
});
