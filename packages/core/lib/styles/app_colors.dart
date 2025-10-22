import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color transparent = Colors.transparent;
  static const Color scaffoldWhite = Color(0xFFEDF4F6);
  static const Color text01 = Color(0xFF3A4660);
  static const Color text02 = Color(0xFF7A94A7);
  static const Color text03 = Color(0xFFCBDEE6);
  static const Color text04 = Color(0xFFC4D2EF);
  static const Color text05 = Color(0xFF00339B);
  static const Color interactive02 = Color(0xFFA0C3D2);
  static const Color interactive03 = Color(0xFFFFFFFF);
  static const Color interactive04 = Color(0xFF0043CC);
  static const Color activeSecondary = Color(0xFF566980);
  static const Color errorColor = Color(0xFFFF0055);
  static const Color barColor = Color(0xFFFD2829);
  static const Color errorText = Color(0xFFFF003D);
  static const Color redDark = Color(0xFFFF2729);
  static const Color backgroundBlockedCard = Color(0xFFDDE9EF);
  static const Color borderFocus = Color(0xFF7198E1);
  static const Color support01 = Color(0xFFE52F2F);
  static const Color inverseSupport01 = Color(0xFFEB6161);
  static const Color disable01 = Color(0xFFF8FBFC);
  static const Color disable02 = Color(0xFFDDE9EF);
  static const Color disable03 = Color(0xFFB7D1DD);
  static const Color disable04 = Color(0xFFEEEFEF);
  static const Color disable05 = Color(0xFFDCDCDC);
  static const Color disable06 = Color(0xFFE6E7E7);
  static const Color eliseColor = Color(0xFF060211);
  static const Color checkBorderColor = Color(0xFFF669E8);
  static const Color checkGreenColor = Color(0xFF00BB0A);
  static const Color activeCard = Color(0xFF59B874);
  static const Color avatarBg = Color(0xFFC9CDD2);
  static const Color actionBtn = Color(0xFF34FF6F);
  static const Color iconActionBtn = Color(0xFF131735);
  static const Color skelector02 = Color(0xFFDBE9EC);
  static Color spacingOverlay01 = const Color(
    0xFF131735,
  ).withValues(alpha: 0.5);
  static const Color purpleTagBackground = Color(0xFFDFCBFF);
  static const Color purpleTagHover = Color(0xFFCDAFFF);
  static const Color modalBg = Color(0xFF0A0C1C);
  static const Color historyBg = Color(0xFFD4E7F0);
  static const Color detailIconColor = Color(0xFF34FFD0);
  static const Color tagGreenColor = Color(0xFF135727);

  static const Color sliderGreen = Color(0xFF34FF6F);
  static const Color sliderPurple = Color(0xFFC599FF);

  static final LinearGradient sliderAccountGradient1 = LinearGradient(
    colors: <Color>[sliderGreen.withValues(alpha: 0), sliderGreen],
    stops: const <double>[0.5, 1],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const LinearGradient sliderAccountGradient2 = LinearGradient(
    colors: <Color>[sliderPurple, sliderPurple],
    stops: <double>[0.89, 1],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static final LinearGradient sliderAccountGradient3 = LinearGradient(
    colors: <Color>[interactive03, interactive03.withValues(alpha: 0)],
    stops: const <double>[0.6, 1],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const LinearGradient customGradient = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: <Color>[Color(0xFF24FBE9), Color(0xFF2B00FF), Color(0xFFAFFFF7)],
    stops: <double>[0.5, 0.5, 1.0],
  );

  //Dark Mode Colors
  static const Color iconActionBtnDark = Color(0xFFB9FF00);
}
