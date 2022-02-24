import 'package:course_app_ui/components/my_bottom_bar.dart';
import 'package:course_app_ui/components/my_button.dart';
import 'package:course_app_ui/components/my_card.dart';
import 'package:course_app_ui/core/constants.dart';
import 'package:course_app_ui/screens/course_screen/widgets/course_contents_list.dart';
import 'package:course_app_ui/screens/course_screen/widgets/toggle.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Bar
            _buildTopBar(context),

            // Video player
            _buildVideoPlayer(colorScheme),

            // Course info
            _buildCourseInfo(textTheme, colorScheme),

            // Toggle
            const Toggle(),

            // Course contents
            const Expanded(child: CourseContentsList()),

            // Bottom Bar
            _buildBottomBar()
          ],
        ),
      ),
    );
  }

  Flexible _buildVideoPlayer(ColorScheme colorScheme) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: defaultPadding,
        child: Stack(
          children: [
            MyCard(
              color: colorScheme.tertiaryContainer,
              borderRadius: const BorderRadius.all(Radius.circular(32.0)),
              child: Image.asset('assets/images/course_image_5.png'),
            ),
            Positioned.fill(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 80,
                child: MyCard(
                  borderRadius: const BorderRadius.all(Radius.circular(32.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/rewind_left.png',
                        width: 32,
                      ),
                      Image.asset(
                        'assets/images/skip_left.png',
                        width: 32,
                      ),
                      Image.asset(
                        'assets/images/play.png',
                        width: 50,
                      ),
                      Image.asset(
                        'assets/images/skip_right.png',
                        width: 32,
                      ),
                      Image.asset(
                        'assets/images/rewind_right.png',
                        width: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Padding _buildCourseInfo(TextTheme textTheme, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "UI / UX Design Essentials Course",
            style: textTheme.titleLarge,
          ),
          RichText(
            text: TextSpan(
              style: textTheme.titleMedium,
              children: <TextSpan>[
                const TextSpan(text: "Created by "),
                TextSpan(
                  text: "John Doe",
                  style: TextStyle(color: colorScheme.primary),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Image.asset('assets/images/star.png', width: 25),
              Text(
                "4.2",
                style: textTheme.titleSmall,
              ),
              const SizedBox(width: 8),
              Image.asset('assets/images/clock.png', width: 25),
              Text(
                "42 hours",
                style: textTheme.titleSmall,
              ),
              Flexible(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "\$40",
                    style: textTheme.titleLarge
                        ?.copyWith(color: colorScheme.primary),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  FractionallySizedBox _buildTopBar(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0.0,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            Text(
              "UI / UX Design",
              style: Theme.of(context).textTheme.headlineSmall,
            )
          ],
        ),
      ),
    );
  }

  MyBottomBar _buildBottomBar() {
    return MyBottomBar(
      child: Row(
        children: [
          MyButton(
            child: const Text("Save"),
            onPressed: () {},
            active: false,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: MyButton(
              child: const Text("Enroll Now"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
