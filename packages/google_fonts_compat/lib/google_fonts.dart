/// Compatibility shim for google_fonts package with Flutter 3.27+
/// Provides GoogleFonts class that accepts all standard text style parameters
library google_fonts;

import 'package:flutter/material.dart';

class GoogleFonts {
  static TextTheme textTheme([TextTheme? base]) {
    return base ?? const TextTheme();
  }
  
  /// Dynamic method handler - supports any font name as a method call
  static TextStyle _fontStyle({
    TextStyle? textStyle,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    List<FontFeature>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    String? package,
    TextOverflow? overflow,
  }) {
    return (textStyle ?? const TextStyle()).copyWith(
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      debugLabel: debugLabel,
      overflow: overflow,
    );
  }

  // Inter font (most used)
  static TextStyle inter({
    TextStyle? textStyle,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) {
    return _fontStyle(
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      debugLabel: debugLabel,
      overflow: overflow,
    );
  }

  // Inter Tight font
  static TextStyle interTight({
    TextStyle? textStyle,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) {
    return _fontStyle(
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      debugLabel: debugLabel,
      overflow: overflow,
    );
  }

  // Get font by name
  static TextStyle getFont(
    String fontName, {
    TextStyle? textStyle,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    double? height,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
  }) {
    return _fontStyle(
      textStyle: textStyle,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      height: height,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
    );
  }

  // Other common fonts
  static TextStyle lato({TextStyle? textStyle, Color? color, double? fontSize, FontWeight? fontWeight, FontStyle? fontStyle, double? letterSpacing, double? height}) => _fontStyle(textStyle: textStyle, color: color, fontSize: fontSize, fontWeight: fontWeight, fontStyle: fontStyle, letterSpacing: letterSpacing, height: height);
  static TextStyle roboto({TextStyle? textStyle, Color? color, double? fontSize, FontWeight? fontWeight, FontStyle? fontStyle, double? letterSpacing, double? height}) => _fontStyle(textStyle: textStyle, color: color, fontSize: fontSize, fontWeight: fontWeight, fontStyle: fontStyle, letterSpacing: letterSpacing, height: height);
  static TextStyle poppins({TextStyle? textStyle, Color? color, double? fontSize, FontWeight? fontWeight, FontStyle? fontStyle, double? letterSpacing, double? height}) => _fontStyle(textStyle: textStyle, color: color, fontSize: fontSize, fontWeight: fontWeight, fontStyle: fontStyle, letterSpacing: letterSpacing, height: height);
  static TextStyle montserrat({TextStyle? textStyle, Color? color, double? fontSize, FontWeight? fontWeight, FontStyle? fontStyle, double? letterSpacing, double? height}) => _fontStyle(textStyle: textStyle, color: color, fontSize: fontSize, fontWeight: fontWeight, fontStyle: fontStyle, letterSpacing: letterSpacing, height: height);
  static TextStyle urbanist({TextStyle? textStyle, Color? color, double? fontSize, FontWeight? fontWeight, FontStyle? fontStyle, double? letterSpacing, double? height}) => _fontStyle(textStyle: textStyle, color: color, fontSize: fontSize, fontWeight: fontWeight, fontStyle: fontStyle, letterSpacing: letterSpacing, height: height);
  static TextStyle outfit({TextStyle? textStyle, Color? color, double? fontSize, FontWeight? fontWeight, FontStyle? fontStyle, double? letterSpacing, double? height}) => _fontStyle(textStyle: textStyle, color: color, fontSize: fontSize, fontWeight: fontWeight, fontStyle: fontStyle, letterSpacing: letterSpacing, height: height);
}
