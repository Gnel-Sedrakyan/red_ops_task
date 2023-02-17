import 'package:flutter/material.dart';
import 'package:red_ops_task/presentation/core/constants/colors.dart';
import 'package:red_ops_task/presentation/core/constants/styles.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.isActive = true,
    required this.isSelected,
  }) : super(key: key);

  final Function() onPressed;
  final Widget child;
  final bool isActive;
  final bool isSelected;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() {
        _isPressed = true;
      }),
      onTapUp: (_) => setState(() {
        _isPressed = false;
        if (widget.isActive) {
          widget.onPressed();
        }
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: buttonPadding,
        decoration: BoxDecoration(
            // boxShadow: [
            //   if (!_isPressed && widget.isActive) primaryShadow,
            //   if (!_isPressed && !widget.isActive) defaultshadow,
            // ],
            borderRadius: BorderRadius.circular(10.0),
            color: widget.isSelected
                ? _isPressed
                    ? primaryColor.shade200
                    : primaryColor
                : null),
        child: DefaultTextStyle(
          style: TextStyle(
              color: widget.isSelected
                  ? onPrimaryColor
                  : _isPressed
                      ? primaryColor.shade200
                      : primaryColor),
          child: widget.child,
        ),
      ),
    );
  }
}
