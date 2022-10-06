import 'package:flutter/material.dart';
import 'package:go_route_example/home.dart';
import 'package:go_route_example/page_a.dart';
import 'package:go_route_example/page_b.dart';
import 'package:go_route_example/page_c.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({super.key});

  static const String title = 'GoRouter Example: Declarative Routes';

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: title,
      );
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (BuildContext context, GoRouterState sate) =>
            const MyHomePage(),
        routes: <GoRoute>[
          GoRoute(
            name: 'page1',
            path: 'page1',
            builder: (BuildContext context, GoRouterState state) =>
                const MyPageA(),
          ),
          GoRoute(
            name: 'page2',
            path: 'page2',
            builder: (BuildContext context, GoRouterState state) =>
                const MyPageB(),
          ),
          GoRoute(
            name: 'page3',
            path: 'page3',
            builder: (BuildContext context, GoRouterState state) =>
                const MyPageC(),
          ),
        ],
      ),
    ],
  );
}
