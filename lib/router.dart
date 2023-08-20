import 'package:flutter/material.dart' show Icons, Icon, Widget;

import 'pages/home/feed/feed_page.dart';
import 'pages/home/home_page.dart';
import 'pages/home/models/navigation_bar_content.dart';
import 'pages/home/profile/profile_page.dart';
import 'pages/home/settings/settings_page.dart';

abstract class AshRouter {
  static Widget get initialPage => HomePage();

  static final homeNavigationBarItems = <AshNavigationBarContent>[
    AshNavigationBarContent(
      label: 'Feed',
      icon: Icon(Icons.home),
      page: FeedPage(),
    ),
    AshNavigationBarContent(
      label: 'Profile',
      icon: Icon(Icons.accessibility),
      page: ProfilePage(),
    ),
    AshNavigationBarContent(
      label: 'Settings',
      icon: Icon(Icons.settings),
      page: SettingsPage(),
    ),
  ];
}
