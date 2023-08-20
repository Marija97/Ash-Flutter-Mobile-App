import 'package:flutter/material.dart';

import 'router.dart';

void main() => runApp(const AshApp());

class AshApp extends StatelessWidget {
  const AshApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ash',
      home: AshRouter.initialPage,
    );
  }
}