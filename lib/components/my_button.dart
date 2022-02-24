import 'package:course_app_ui/core/constants.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    required this.child,
    required this.onPressed,
    this.active = true,
    this.elevation = defaultElevation,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final Function() onPressed;
  final bool active;
  final double elevation;

  TextStyle _getTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge ?? const TextStyle();

  Color _getColor(BuildContext context) =>
      active ? Theme.of(context).colorScheme.primary : Colors.grey;

  final _buttonPadding =
      const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: active ? elevation : 0.0,
      borderRadius: defaultBorderRadius,
      textStyle: _getTextStyle(context),
      shadowColor: _getColor(context),
      color: _getColor(context),
      child: InkWell(
        borderRadius: defaultBorderRadius,
        onTap: onPressed,
        child: Padding(
          padding: _buttonPadding,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
