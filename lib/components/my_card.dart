import 'package:course_app_ui/core/constants.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    required this.child,
    this.onPressed,
    this.elevation,
    this.borderRadius,
    this.padding,
    this.color,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final Function()? onPressed;
  final double? elevation;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? defaultPadding,
      child: Material(
        borderRadius: borderRadius ?? defaultBorderRadius,
        elevation: elevation ?? defaultElevation,
        color: color,
        child: InkWell(
          onTap: onPressed,
          borderRadius: borderRadius ?? defaultBorderRadius,
          child: Padding(
            padding: defaultPadding,
            child: Center(
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
