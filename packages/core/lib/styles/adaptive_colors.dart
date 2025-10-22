import 'package:core/styles/styles.dart';
import 'package:flutter/material.dart';

/// Helper class para obtener colores adaptativos según el tema actual
class AdaptiveColors {
  AdaptiveColors._();

  /// Background color adaptativo
  static Color background(BuildContext context) {
    return context.isDarkMode
        ? AppColors.modalBg
        : AppColors.scaffoldWhite;
  }

  /// Text color adaptativo
  static Color text(BuildContext context) {
    return context.isDarkMode
        ? AppColors.interactive03
        : AppColors.text01;
  }

  /// Secondary text color adaptativo
  static Color secondaryText(BuildContext context) {
    return context.isDarkMode
        ? AppColors.text03
        : AppColors.text02;
  }

  /// Surface color adaptativo
  static Color surface(BuildContext context) {
    return context.isDarkMode
        ? AppColors.eliseColor
        : AppColors.interactive03;
  }

  /// Primary color adaptativo
  static Color primary(BuildContext context) {
    return context.isDarkMode
        ? AppColors.actionBtn
        : AppColors.interactive04;
  }

  /// Icon action button color adaptativo
  static Color iconActionButton(BuildContext context) {
    return context.isDarkMode
        ? AppColors.iconActionBtnDark
        : AppColors.actionBtn;
  }

  /// Border color adaptativo
  static Color border(BuildContext context) {
    return context.isDarkMode
        ? AppColors.activeSecondary
        : AppColors.disable05;
  }

  /// Card background color adaptativo
  static Color cardBackground(BuildContext context) {
    return context.isDarkMode
        ? AppColors.eliseColor
        : AppColors.interactive03;
  }
}
