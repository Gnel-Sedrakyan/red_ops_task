import 'package:flutter/material.dart';
import 'package:red_ops_task/presentation/core/constants/colors.dart';
import 'package:red_ops_task/presentation/core/constants/defalut_values.dart';
import 'package:red_ops_task/presentation/core/constants/styles.dart';

class Surface extends StatelessWidget {
  const Surface({
    Key? key,
    required this.child,
    this.width,
    this.height,
  }) : super(key: key);

  final Widget child;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(color: borderColor),
        boxShadow: const [defaultshadow],
      ),
      child: child,
    );
  }
}
