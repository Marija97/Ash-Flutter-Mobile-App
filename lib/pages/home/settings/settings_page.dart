import 'package:flutter/material.dart';

import '../../../widgets/text.dart';

class SettingsPage extends StatelessWidget {
  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AshText.large('Settings!'),
    );
  }
}
