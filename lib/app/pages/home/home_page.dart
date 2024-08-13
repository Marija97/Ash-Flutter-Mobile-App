import 'package:flutter/material.dart';

import '../../routing/router.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final destinations = AshRouter.homeNavigationBarItems
      .map((navigationBarItem) => navigationBarItem.asDestination)
      .toList();

  void _onDestinationSelected(int index) => setState(() {
        currentIndex = index;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            // Todo: fetch AshTheme object and read navigationBarDividerColor
            top: BorderSide(color: Colors.white, width: .5),
          ),
        ),
        child: NavigationBar(
          destinations: destinations,
          selectedIndex: currentIndex,
          onDestinationSelected: _onDestinationSelected,
          animationDuration: Duration.zero,
        ),
      ),
      body: AshRouter.homeNavigationBarItems[currentIndex].page,
    );
  }
}
