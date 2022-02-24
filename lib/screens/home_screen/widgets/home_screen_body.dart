import 'package:course_app_ui/components/my_card.dart';
import 'package:course_app_ui/screens/course_screen/course_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      children: [
        // Title Row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Explore categories",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Text(
                "See all",
                style: theme.textTheme.titleMedium
                    ?.copyWith(color: theme.colorScheme.primary),
              ),
            ],
          ),
        ),

        // First courses row
        Row(
          children: [
            _buildCoursePanel(
              context,
              imagePath: 'assets/images/course_image_1.png',
              title: "Talking",
            ),
            _buildCoursePanel(
              context,
              imagePath: 'assets/images/course_image_2.png',
              title: "Photography",
            ),
          ],
        ),

        // Second courses row
        Row(
          children: [
            _buildCoursePanel(
              context,
              imagePath: 'assets/images/course_image_3.png',
              title: "Losing money",
            ),
            _buildCoursePanel(
              context,
              imagePath: 'assets/images/course_image_4.png',
              title: "Checking boxes",
            ),
          ],
        ),
      ],
    );
  }

  Expanded _buildCoursePanel(
    BuildContext context, {
    required String imagePath,
    required String title,
  }) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    return Expanded(
      child: MyCard(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CourseScreen()),
          );
        },
        borderRadius: const BorderRadius.all(Radius.circular(32.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                imagePath,
                width: size.width * 0.25,
              ),
              Text(
                title,
                style: theme.textTheme.titleMedium,
              ),
              Text(
                "18 courses",
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
