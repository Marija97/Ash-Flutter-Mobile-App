import 'package:flutter/material.dart';

import 'package:ash/theme.dart';
import 'router.dart';

Future<void> main() async {
  await Future.delayed(const Duration(seconds: 2));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AshApp());
}

class AshApp extends StatelessWidget {
  const AshApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ash',
      debugShowCheckedModeBanner: false,
      theme: AshTheme.light().data,
      home: AshRouter.initialPage,
    );
  }
}
