import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

final ThemeData lightTheme = FlexThemeData.light(
  colors: const FlexSchemeColor(
    primary: Color(0xFF542C0D), // Dark brown (main color)
    primaryContainer: Color(0xFF542C0D), // Same as primary
    secondary: Colors.orange, // Used for "Forgot Password"
    secondaryContainer: Colors.orange,
    tertiary: Colors.blue, // Used for social buttons
    tertiaryContainer: Colors.blue,
    appBarColor: Color(0xFF542C0D), // Matches header background
  ),
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 18,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 18,
    blendOnColors: false,
    inputDecoratorRadius: 12.0, // TextField border radius
    elevatedButtonRadius: 12.0, // ElevatedButton border radius
    elevatedButtonSchemeColor: SchemeColor.primary,
    outlinedButtonSchemeColor: SchemeColor.primary,
    toggleButtonsRadius: 12.0,
    cardRadius: 40.0, // Container corner radius
    popupMenuRadius: 12.0,
    bottomSheetRadius: 40.0,
    dialogRadius: 40.0,
    snackBarRadius: 12.0,
    bottomNavigationBarElevation: 0,
    bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.primary,
    bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  fontFamily: 'Roboto',
);

final ThemeData darkTheme = FlexThemeData.dark(
  colors: const FlexSchemeColor(
    primary: Color(0xFF542C0D),
    primaryContainer: Color(0xFF542C0D),
    secondary: Colors.orange,
    secondaryContainer: Colors.orange,
    tertiary: Colors.blue,
    tertiaryContainer: Colors.blue,
    appBarColor: Color(0xFF542C0D),
  ),
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 18,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 18,
    blendOnColors: false,
    inputDecoratorRadius: 12.0,
    elevatedButtonRadius: 12.0,
    elevatedButtonSchemeColor: SchemeColor.primary,
    outlinedButtonSchemeColor: SchemeColor.primary,
    toggleButtonsRadius: 12.0,
    cardRadius: 40.0,
    popupMenuRadius: 12.0,
    bottomSheetRadius: 40.0,
    dialogRadius: 40.0,
    snackBarRadius: 12.0,
    bottomNavigationBarElevation: 0,
    bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.primary,
    bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
  ),
  textTheme: _buildCustomTextTheme(ThemeData.dark().textTheme),
  primaryTextTheme: _buildCustomTextTheme(ThemeData.dark().primaryTextTheme),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  fontFamily: 'Roboto',
);

TextTheme _buildCustomTextTheme(TextTheme base) {
  return base.copyWith(
    displayLarge: base.displayLarge?.copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white, // For your "Log In" title
    ),
    bodyLarge: base.bodyLarge?.copyWith(
      fontSize: 16,
      color: Colors.white70, // For your subtitle
    ),
    labelLarge: base.labelLarge?.copyWith(
      fontSize: 14,
      color: Colors.grey[700], // For "EMAIL" and "PASSWORD" labels
    ),
    titleMedium: base.titleMedium?.copyWith(
      color: Colors.blue, // For "SIGN UP" text
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: base.bodyMedium?.copyWith(
      color: Colors.orange, // For "Forgot Password"
    ),
    // Add other text styles as needed
  );
}
