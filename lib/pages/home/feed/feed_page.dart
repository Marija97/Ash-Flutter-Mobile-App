import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../widgets/text.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AshColors.photoAlbumBackground,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AshText.large('Feed :)'),
          Assets.images.illustrations.photoAlbum.image(),
        ],
      ),
    );
  }
}
