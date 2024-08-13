import 'package:flutter/material.dart' show BuildContext;
import 'package:go_router/go_router.dart';

import '../../pages/home/home_page.dart';
import '../pages/home/feed/feed_page.dart';
import '../pages/home/models/navigation_bar_content.dart';
import '../pages/home/profile/profile_page.dart';
import '../pages/home/settings/settings_page.dart';

abstract class RoutePaths {
  static const String home = '/home';
}

abstract class AshRouter {
  static final homeNavigationBarItems = <AshNavigationBarItem>[
    AshNavigationBarItem.feed(page: FeedPage()),
    AshNavigationBarItem.profile(page: ProfilePage()),
    AshNavigationBarItem.settings(page: SettingsPage()),
  ];

  static final GoRouter instance = GoRouter(
    initialLocation: RoutePaths.home,
    routes: [
      GoRoute(
        path: RoutePaths.home,
        builder: (BuildContext context, GoRouterState state) {
          return HomePage();
        },
        routes: const <RouteBase>[],
      ),
    ],
  );
}
