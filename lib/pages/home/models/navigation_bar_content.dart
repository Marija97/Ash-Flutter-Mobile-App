import 'package:flutter/material.dart' show NavigationDestination, Widget;

class AshNavigationBarContent {
  final String label;
  final Widget icon;
  final Widget page;

  AshNavigationBarContent({
    required this.label,
    required this.icon,
    required this.page,
  });

  NavigationDestination get asDestination {
    return NavigationDestination(icon: icon, label: label);
  }
}
