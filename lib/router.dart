import 'package:flutter/material.dart' show Widget;

import 'pages/home/feed/feed_page.dart';
import 'pages/home/home_page.dart';
import 'pages/home/models/navigation_bar_content.dart';
import 'pages/home/profile/profile_page.dart';
import 'pages/home/settings/settings_page.dart';

abstract class AshRouter {
  static Widget get initialPage => HomePage();

  static final homeNavigationBarItems = <AshNavigationBarContent>[
    AshNavigationBarContent.feed(page: FeedPage()),
    AshNavigationBarContent.profile(page: ProfilePage()),
    AshNavigationBarContent.settings(page: SettingsPage()),
  ];
}
