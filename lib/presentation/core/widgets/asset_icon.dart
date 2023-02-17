import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetIcon extends StatelessWidget {
  const AssetIcon({
    Key? key,
    required this.icon,
    this.size,
    this.color,
  }) : super(key: key);

  final String icon;
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(icon,
        color: color, height: size, width: size, fit: BoxFit.scaleDown);
  }
}
