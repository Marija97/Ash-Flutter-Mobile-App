import 'package:flutter/material.dart';

import '../../../widgets/text.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AshText.large('Profile!'),
    );
  }
}
