import 'package:flutter/material.dart';

class CourseContentsList extends StatelessWidget {
  const CourseContentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
        itemCount: _courseContents.length,
        itemBuilder: (ctx, id) {
          return ListTile(
            leading: Text("${id + 1}.", style: textTheme.displayLarge),
            title: Text(_courseContents[id], style: textTheme.titleLarge),
            subtitle: Text("21 min 37 sec", style: textTheme.titleSmall),
            trailing: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                id < 2 ? 'assets/images/check.png' : 'assets/images/lock.png',
              ),
            ),
          );
        },
      ),
    );
  }

  final _courseContents = const [
    "Introduction",
    "What is UI UX design",
    "What is not UI UX design",
    "How to make a wireframe",
    "How not to make a wireframe",
  ];
}
