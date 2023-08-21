import 'package:flutter/material.dart';

import 'text.dart';

class AshButton extends StatelessWidget {
  const AshButton({required this.title, this.onTap});

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      child: AshText.medium(title),
    );
  }
}
