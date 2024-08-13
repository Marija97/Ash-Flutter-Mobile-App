import 'package:flutter/material.dart';

class AshNavigationBarItem {
  final String label;
  final IconData icon;
  final Widget page;

  AshNavigationBarItem({
    required this.label,
    required this.icon,
    required this.page,
  });

  factory AshNavigationBarItem.feed({required Widget page}) => //
      AshNavigationBarItem(
        label: 'Feed',
        icon: Icons.menu_book_rounded,
        page: page,
      );

  factory AshNavigationBarItem.profile({required Widget page}) => //
      AshNavigationBarItem(
        label: 'Profile',
        icon: Icons.account_box_outlined,
        page: page,
      );

  factory AshNavigationBarItem.settings({required Widget page}) => //
      AshNavigationBarItem(
        label: 'Settings',
        icon: Icons.settings,
        page: page,
      );

  NavigationDestination get asDestination {
    return NavigationDestination(
      icon: Icon(icon, size: 26, color: Colors.blueGrey.shade800.withOpacity(.55)),
      selectedIcon: Icon(icon, size: 26, color: Colors.blueGrey.shade800),
      label: label,
    );
  }
}
