import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/text.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AshColors.background,
      body: Center(
        child: AshText.large('Welcome!'),
      ),
    );
  }
}
