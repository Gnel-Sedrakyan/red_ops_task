import 'package:flutter/material.dart';
import 'package:red_ops_task/presentation/core/constants/colors.dart';
import 'package:red_ops_task/presentation/core/constants/defalut_values.dart';

const primaryShadow = BoxShadow(
  color: primaryShadowColor,
  spreadRadius: defaultShadowSpreadRadius,
  blurRadius: defaultShadowBlurRadius,
  offset: defaultShadowOffset,
);

const secondaryShadow = BoxShadow(
  color: secondaryShadowColor,
  spreadRadius: defaultShadowSpreadRadius,
  blurRadius: defaultShadowBlurRadius,
  offset: defaultShadowOffset,
);

const defaultshadow = BoxShadow(
  color: defaultShadowColor,
  spreadRadius: defaultShadowSpreadRadius,
  blurRadius: defaultShadowBlurRadius,
  offset: defaultShadowOffset,
);

final primaryGradient = LinearGradient(
  colors: [
    primaryColor.shade50,
    primaryColor,
    primaryColor.shade50,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const secondaryGradientLightTheme = LinearGradient(
  colors: [
    secondaryColorLightTheme,
    Color(0xFFFFD100),
    secondaryColorLightTheme,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

final buttonBorderRadius = MaterialStateProperty.all<RoundedRectangleBorder>(
  RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(35.0),
    // side:
    //     BorderSide(color: Theme.of(context).colorScheme.primary),
  ),
);

const buttonPadding = EdgeInsets.only(left: 16, right: 16, top: 13, bottom: 13);
const secondaryButtonPadding =
    EdgeInsets.only(left: 20, right: 20, top: 17, bottom: 17);
