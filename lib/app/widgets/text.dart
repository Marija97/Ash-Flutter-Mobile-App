import 'package:flutter/material.dart';

import '../common/dimensions.dart';

class AshText extends StatelessWidget {
  final String text;
  final double size;
  final Color? color;

  const AshText(this.text, {required this.size, this.color});

  const AshText.small(String text) : this(text, size: AshFontSizes.subtitle2);

  const AshText.medium(String text) : this(text, size: AshFontSizes.subtitle1);

  const AshText.large(String text) : this(text, size: AshFontSizes.subheading);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: size, color: color));
  }
}
