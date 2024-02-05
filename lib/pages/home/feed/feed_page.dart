import 'package:ash/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../gen/assets.gen.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Spacer(),
          Text(
            AshConstants.lifeQuote,
            style: GoogleFonts.dancingScript().copyWith(fontSize: 35),
          ),
          Assets.images.illustrations.photoAlbum.image(),
          const Spacer(),
        ],
      ),
    );
  }
}
