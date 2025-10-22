import 'package:flutter/material.dart';

extension VariableFontTextTheme on TextTheme {
  TextStyle applyVariable({
    String fontFamily = 'RobotoFlex',
    double? wght,
    double? wdth,
    double? xtra,
  }) {
    final List<FontVariation> variations = <FontVariation>[];

    if (wght != null) {
      variations.add(FontVariation('wght', wght));
    }
    if (wdth != null) {
      variations.add(FontVariation('wdth', wdth));
    }
    if (xtra != null) {
      variations.add(FontVariation('XTRA', xtra));
    }

    return TextStyle(fontFamily: fontFamily, fontVariations: variations);
  }

  TextTheme withVariableFont({
    String fontFamily = 'RobotoFlex',
    double wght = 400,
    double wdth = 150,
    double? xtra,
  }) {
    return TextTheme(
      displayLarge: displayLarge?.merge(
        applyVariable(
          fontFamily: fontFamily,
          wght: wght,
          wdth: wdth,
          xtra: xtra,
        ),
      ),
      displayMedium: displayMedium?.merge(
        applyVariable(
          fontFamily: fontFamily,
          wght: wght,
          wdth: wdth,
          xtra: xtra,
        ),
      ),
      displaySmall: displaySmall?.merge(
        applyVariable(
          fontFamily: fontFamily,
          wght: wght,
          wdth: wdth,
          xtra: xtra,
        ),
      ),
      headlineLarge: headlineLarge?.merge(
        applyVariable(
          fontFamily: fontFamily,
          wght: wght,
          wdth: wdth,
          xtra: xtra,
        ),
      ),
      headlineMedium: headlineMedium?.merge(
        applyVariable(
          fontFamily: fontFamily,
          wght: wght,
          wdth: wdth,
          xtra: xtra,
        ),
      ),
      headlineSmall: headlineSmall?.merge(
        applyVariable(
          fontFamily: fontFamily,
          wght: wght,
          wdth: wdth,
          xtra: xtra,
        ),
      ),
      titleLarge: titleLarge?.merge(
        applyVariable(fontFamily: fontFamily, wght: 500, wdth: 151, xtra: 518),
      ),
      titleMedium: titleMedium?.merge(
        applyVariable(fontFamily: fontFamily, wght: 500, wdth: 151, xtra: 518),
      ),
      titleSmall: titleSmall?.merge(
        applyVariable(fontFamily: fontFamily, wght: 500, wdth: 151, xtra: 518),
      ),
      bodyLarge: bodyLarge?.merge(
        applyVariable(
          fontFamily: fontFamily,
          wght: wght,
          wdth: wdth,
          xtra: xtra,
        ),
      ),
      bodyMedium: bodyMedium?.merge(
        applyVariable(fontFamily: fontFamily, wdth: 150),
      ),
      bodySmall: bodySmall?.merge(
        applyVariable(fontFamily: fontFamily, wdth: 150),
      ),
      labelLarge: labelLarge?.merge(
        applyVariable(fontFamily: fontFamily, wdth: 150),
      ),
      labelMedium: labelMedium?.merge(
        applyVariable(fontFamily: fontFamily, wdth: 150, xtra: 500),
      ),
      labelSmall: labelSmall?.merge(
        applyVariable(fontFamily: fontFamily, wdth: 150),
      ),
    );
  }
}
