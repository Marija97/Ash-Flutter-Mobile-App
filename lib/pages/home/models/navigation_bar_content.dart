import 'package:flutter/material.dart';

class AshNavigationBarContent {
  final String label;
  final Widget icon;
  final Widget page;

  AshNavigationBarContent({
    required this.label,
    required this.icon,
    required this.page,
  });

  factory AshNavigationBarContent.feed({required Widget page}) =>
      AshNavigationBarContent(
        label: 'Feed',
        icon: Icon(Icons.home),
        page: page,
      );

  factory AshNavigationBarContent.profile({required Widget page}) =>
      AshNavigationBarContent(
        label: 'Profile',
        icon: Icon(Icons.accessibility),
        page: page,
      );

  factory AshNavigationBarContent.settings({required Widget page}) =>
      AshNavigationBarContent(
        label: 'Settings',
        icon: Icon(Icons.settings),
        page: page,
      );

  NavigationDestination get asDestination {
    return NavigationDestination(icon: icon, label: label);
  }
}
