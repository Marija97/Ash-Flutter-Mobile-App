import 'package:flutter/material.dart';

import '../../../widgets/text.dart';

class FeedPage extends StatelessWidget {
  static const routeName = '/feed';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AshText.large('Feed!'),
    );
  }
}
