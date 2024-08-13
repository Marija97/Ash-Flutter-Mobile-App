import 'package:flutter/material.dart';

import 'colors.dart';
import '../common/dimensions.dart';

class AshTheme {
  factory AshTheme.dark() => _AshDarkTheme();

  ThemeData get data => ThemeData();

  Color get navigationBarDividerColor => AshColors.translucent;

  static TextTheme _buildTextTheme(ThemeData base) {
    final textTheme = base.textTheme;

    return textTheme.copyWith(
      displayLarge: textTheme.displayLarge?.copyWith(
        fontSize: AshFontSizes.headline1,
      ),
      displaySmall: textTheme.displaySmall?.copyWith(
        fontSize: AshFontSizes.headline2,
      ),
      headlineMedium: textTheme.headlineMedium?.copyWith(
        fontSize: AshFontSizes.headline3,
      ),
      headlineSmall: textTheme.headlineSmall?.copyWith(
        fontSize: AshFontSizes.headline4,
      ),
      titleLarge: textTheme.titleLarge?.copyWith(
        fontSize: AshFontSizes.headline5,
      ),
      titleMedium: textTheme.titleMedium?.copyWith(
        fontSize: AshFontSizes.headline6,
      ),
    );
  }
}

class _AshDarkTheme implements AshTheme {
  @override
  ThemeData get data => ThemeData.dark().copyWith(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark().copyWith(
          primary: AshColors.accentDark,
          secondary: AshColors.accentDark,
        ),
        primaryColor: AshColors.primaryDark,
        canvasColor: AshColors.canvasDark,
        scaffoldBackgroundColor: AshColors.backgroundDark,
        cardColor: AshColors.cardDark,
        dividerColor: AshColors.dividerDark,
        dialogBackgroundColor: AshColors.cardDark,
        textTheme: AshTheme._buildTextTheme(ThemeData.dark()),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: AshColors.backgroundDark,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          indicatorColor: AshColors.translucent,
          height: 70,
        ),
      );

  @override
  Color get navigationBarDividerColor => AshColors.dividerDark;
}
