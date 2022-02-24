import 'package:course_app_ui/components/my_card.dart';
import 'package:course_app_ui/core/constants.dart';
import 'package:flutter/material.dart';

class Toggle extends StatefulWidget {
  const Toggle({Key? key}) : super(key: key);

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool _isToggled = false;

  TextStyle _getTextStyle(BuildContext context, bool active) {
    Color? color = active
        ? Theme.of(context).colorScheme.onPrimary
        : Theme.of(context).colorScheme.primary;

    TextStyle? textStyle =
        Theme.of(context).textTheme.labelMedium?.copyWith(color: color);

    return textStyle ?? const TextStyle();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: defaultPadding,
      child: MyCard(
        onPressed: () {
          setState(() {
            _isToggled = !_isToggled;
          });
        },
        color: colorScheme.background,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedAlign(
              alignment:
                  _isToggled ? Alignment.centerRight : Alignment.centerLeft,
              duration: defaultDuration,
              curve: Curves.easeInOut,
              child: FractionallySizedBox(
                widthFactor: 0.5,
                child: MyCard(
                  child: Container(height: 32),
                  elevation: 0,
                  color: colorScheme.primary,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: AnimatedDefaultTextStyle(
                    duration: defaultDuration,
                    curve: Curves.easeInOut,
                    style: _getTextStyle(context, !_isToggled),
                    child: const Text(
                      "Playlist (22)",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: AnimatedDefaultTextStyle(
                    duration: defaultDuration,
                    curve: Curves.easeInOut,
                    style: _getTextStyle(context, _isToggled),
                    child: const Text(
                      "Description",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
