import 'package:flutter/material.dart';

import 'package:ash/theme/theme.dart';
import 'router.dart';

void main() => runApp(const AshApp());

class AshApp extends StatelessWidget {
  const AshApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ash',
      debugShowCheckedModeBanner: false,
      theme: AshTheme.dark().data,
      home: AshRouter.initialPage,
    );
  }
}
