import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube_portfolio_app/presentation/pages/portfolio_home_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class RouteGenrator {
  static GoRouter get router => GoRouter(
    navigatorKey: _rootNavigatorKey ,
        routes: [
          GoRoute(
            path: HomePage.route,
            parentNavigatorKey: _rootNavigatorKey,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const HomePage(),
              key: UniqueKey(),
            ),
          )
        ],
        initialLocation: HomePage.route,
      );
}
