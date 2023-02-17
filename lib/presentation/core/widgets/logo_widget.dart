import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:red_ops_task/presentation/core/assets/asset_manager.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SvgPicture.asset(
      isDarkMode ? Assets.logoDark : Assets.logoLight,
      height: 85,
    );
  }
}
