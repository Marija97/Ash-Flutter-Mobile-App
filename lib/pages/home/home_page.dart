import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../router.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final destinations = AshRouter.homeNavigationBarItems
      .map((item) => item.asDestination)
      .toList();

  void _onDestinationSelected(int index) => setState(() {
        currentIndex = index;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AshColors.background,
      bottomNavigationBar: NavigationBar(
        destinations: destinations,
        selectedIndex: currentIndex,
        onDestinationSelected: _onDestinationSelected,
      ),
      body: AshRouter.homeNavigationBarItems[currentIndex].page,
    );
  }
}
