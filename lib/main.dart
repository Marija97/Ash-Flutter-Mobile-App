import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'app/routing/router.dart';
import 'app/theme/theme.dart';

Future<void> main() async {
  await Future.delayed(const Duration(seconds: 1));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AshApp());
}

class AshApp extends StatelessWidget {
  const AshApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ash',
      debugShowCheckedModeBanner: false,
      routerDelegate: AshRouter.instance.routerDelegate,
      routeInformationParser: AshRouter.instance.routeInformationParser,
      routeInformationProvider: AshRouter.instance.routeInformationProvider,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AshTheme.dark().data,
    );
  }
}
