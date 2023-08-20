import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AshText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const AshText(
    this.text, {
    required this.size,
    this.color = AshColors.standardText,
  });

  const AshText.small(String text) : this(text, size: 12);

  const AshText.medium(String text) : this(text, size: 16);

  const AshText.large(String text) : this(text, size: 22);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: size, color: color));
  }
}
