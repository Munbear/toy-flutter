import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'screens/page1_screen.dart';
import 'screens/page2_screen.dart';

class RouterNotifier extends ChangeNotifier {
  RouterNotifier(ProviderRef<GoRouter> ref);

  List<GoRoute> get _routes => [
        GoRoute(
          path: "/",
          name: "page1",
          builder: (context, _) => const Page1Screen(),
        ),
        GoRoute(
          path: "/page2",
          name: "page2",
          builder: (context, _) => const Page2Screen(),
        )
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

// final routerProvider = Provider<GoRouter>((ref) {
// });
