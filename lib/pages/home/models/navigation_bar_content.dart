import 'package:flutter/material.dart';

class AshNavigationBarItem {
  final String label;
  final Widget icon;
  final Widget page;

  AshNavigationBarItem({
    required this.label,
    required this.icon,
    required this.page,
  });

  factory AshNavigationBarItem.feed({required Widget page}) =>
      AshNavigationBarItem(
        label: 'Feed',
        icon: Icon(Icons.home),
        page: page,
      );

  factory AshNavigationBarItem.profile({required Widget page}) =>
      AshNavigationBarItem(
        label: 'Profile',
        icon: Icon(Icons.accessibility),
        page: page,
      );

  factory AshNavigationBarItem.settings({required Widget page}) =>
      AshNavigationBarItem(
        label: 'Settings',
        icon: Icon(Icons.settings),
        page: page,
      );

  NavigationDestination get asDestination {
    return NavigationDestination(icon: icon, label: label);
  }
}
