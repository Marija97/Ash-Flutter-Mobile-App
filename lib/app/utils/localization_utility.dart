import 'package:flutter/material.dart' show BuildContext;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Enables "tr" use of localizations in widgets
///
/// This enables the shorthand which can be used in any BuildContext
/// Use it like that:
///   - `context.tr.hello('John')`
///   - `context.tr.helloWorld`
extension LocalizationExtension on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this)!;
}
