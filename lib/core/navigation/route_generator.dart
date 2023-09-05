import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meme_app/presentation/pages/portfolio_home_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class RouteGenerator {
  static GoRouter get router => GoRouter(
        navigatorKey: _rootNavigatorKey,
        routes: [
          GoRoute(
            path: HomePage.route,
            pageBuilder: (BuildContext context, GoRouterState state) =>
                NoTransitionPage(
              key: UniqueKey(),
              child: const HomePage(),
            ),
            parentNavigatorKey: _rootNavigatorKey,
          ),
        ],
        initialLocation: HomePage.route,
      );
}
