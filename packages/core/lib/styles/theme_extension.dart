import 'package:flutter/material.dart';

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  Color get primaryColor => theme.primaryColor;
  Color get backgroundColor => theme.colorScheme.surface;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}
