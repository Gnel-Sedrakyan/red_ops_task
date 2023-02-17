import 'package:flutter/material.dart';

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue, a = color.alpha;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      a / 255,
    );
  }
  return MaterialColor(color.value, swatch);
}

final primaryColor = createMaterialColor(const Color(0xFF323C48));
const tertiaryColor = Color(0xFFFF0000);
const onPrimaryColor = Colors.white;
const onSecondaryColor = Colors.white;

const borderColor = Color(0xFFD9D9D9);
final disabledColor = createMaterialColor(const Color(0x7F787878));

// Light Theme
const secondaryColorLightTheme = Color(0xFFD9D9D9);

const surfaceColorLightTheme = Color(0xFFFFFFFF);
const onSurfaceColorLightTheme = Color(0xFF000000);
const bgColorLightTheme = Color.fromARGB(255, 255, 255, 255);

const textColorLightTheme = Color(0xFF555555);
const bodyTextColorLightTheme = Color(0xFF788198);

// Dark Theme
const secondaryColorDarkTheme = Color(0xFFE9780B);

const surfaceColorDarkTheme = Color(0xFF29283C);
const onSurfaceColorDarkTheme = Color(0xFFFFFFFF);
const bgColorDarkTheme = Color.fromARGB(255, 15, 14, 24);

const textColorDarkTheme = Colors.white;
const bodyTextColorDarkTheme = Color(0xFF9CA5BA);
