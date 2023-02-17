import 'package:flutter/material.dart';
import 'package:red_ops_task/presentation/core/constants/colors.dart';
import 'package:red_ops_task/presentation/core/constants/defalut_values.dart';

class AppTheme {
  static TextTheme _buildTextTheme(TextTheme base) {
    const String fontName = 'Raleway';
    return base.copyWith(
      headline1: base.headline1?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      headline2: base.headline2?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      headline3: base.headline3?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      headline4: base.headline4?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      headline5: base.headline5?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      headline6: base.headline6?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      button: base.button?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      caption: base.caption?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      bodyText1: base.bodyText1?.copyWith(
          fontFamily: fontName, color: textColorLightTheme, fontSize: 18),
      bodyText2: base.bodyText2?.copyWith(
          fontFamily: fontName, color: textColorLightTheme, fontSize: 16),
      subtitle1: base.subtitle1?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      subtitle2: base.subtitle2?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      overline: base.overline?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
    );
  }

  static ThemeData buildLightTheme() {
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
        primary: primaryColor,
        secondary: secondaryColorLightTheme,
        onPrimary: onPrimaryColor,
        onSecondary: onSecondaryColor,
        tertiary: tertiaryColor,
        error: const Color(0xFFFF8080) //
        );

    final ThemeData baseThemeData = ThemeData.light();
    return baseThemeData.copyWith(
      disabledColor: disabledColor,
      shadowColor: defaultShadowColor,
      appBarTheme: const AppBarTheme(
          foregroundColor:
              onSurfaceColorLightTheme //here you can give the text color
          ),
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      canvasColor: Colors.white,
      backgroundColor: bgColorLightTheme,
      scaffoldBackgroundColor: bgColorLightTheme,
      errorColor: const Color(0xFFFF8080),
      dividerTheme: const DividerThemeData(
        thickness: 1.0,
        color: onSurfaceColorLightTheme,
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            side: const BorderSide(color: Colors.red)),
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: _buildTextTheme(baseThemeData.textTheme),
      primaryTextTheme: _buildTextTheme(baseThemeData.primaryTextTheme),
      platform: TargetPlatform.iOS,
    );
  }

  static ThemeData buildDarkTheme() {
    final ColorScheme colorScheme = const ColorScheme.dark().copyWith(
      primary: primaryColor,
      secondary: secondaryColorDarkTheme,
      onPrimary: onPrimaryColor,
      onSecondary: onSecondaryColor,
    );

    final ThemeData baseThemeData = ThemeData.dark();
    return baseThemeData.copyWith(
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
          backgroundColor: primaryColor.shade900,
          foregroundColor:
              onSurfaceColorDarkTheme //here you can give the text color
          ),
      primaryColor: primaryColor,
      indicatorColor: bgColorDarkTheme,
      splashColor: bgColorDarkTheme,
      splashFactory: InkRipple.splashFactory,
      canvasColor: bgColorDarkTheme,
      backgroundColor: bgColorDarkTheme,
      scaffoldBackgroundColor: bgColorDarkTheme,
      errorColor: const Color(0xFFB00020),
      dividerTheme: const DividerThemeData(
        thickness: 1.0,
        color: onSurfaceColorDarkTheme,
      ),
      // buttonTheme: ButtonThemeData(
      //   colorScheme: colorScheme,
      //   textTheme: ButtonTextTheme.primary,
      // ),
      textTheme: _buildTextTheme(ThemeData.dark().textTheme),
      primaryTextTheme: _buildTextTheme(ThemeData.dark().textTheme),
      platform: TargetPlatform.iOS,
    );
  }
}
