/// Compatibility shim for google_fonts package with Flutter 3.27+
/// Provides GoogleFonts class with textTheme method
library google_fonts;

import 'package:flutter/material.dart';

class GoogleFonts {
  static TextTheme textTheme([TextTheme? base]) {
    return base ?? const TextTheme();
  }
  
  static TextStyle lato({TextStyle? textStyle, Color? color, double? fontSize, FontWeight? fontWeight, FontStyle? fontStyle, double? letterSpacing, double? wordSpacing, TextBaseline? textBaseline, double? height, Locale? locale, Paint? foreground, Paint? background, List<Shadow>? shadows, List<FontFeature>? fontFeatures, TextDecoration? decoration, Color? decorationColor, TextDecorationStyle? decorationStyle, double? decorationThickness}) {
    return textStyle ?? const TextStyle();
  }
  
  static TextStyle roboto({TextStyle? textStyle}) {
    return textStyle ?? const TextStyle();
  }
  
  static TextStyle poppins({TextStyle? textStyle}) {
    return textStyle ?? const TextStyle();
  }
  
  static TextStyle inter({TextStyle? textStyle}) {
    return textStyle ?? const TextStyle();
  }
  
  static TextStyle montserrat({TextStyle? textStyle}) {
    return textStyle ?? const TextStyle();
  }

  static TextStyle outfit({TextStyle? textStyle}) {
    return textStyle ?? const TextStyle();
  }
  
  static TextStyle urbanist({TextStyle? textStyle}) {
    return textStyle ?? const TextStyle();
  }
}
