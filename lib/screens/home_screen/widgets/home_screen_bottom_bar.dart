import 'package:course_app_ui/components/my_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenBottomBar extends StatelessWidget {
  const HomeScreenBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyBottomBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildBottomBarButton(
            context,
            imagePath: 'assets/images/star.png',
            title: "Featured",
            selected: true,
          ),
          _buildBottomBarButton(
            context,
            imagePath: 'assets/images/books.png',
            title: "MyCourses",
          ),
          _buildBottomBarButton(
            context,
            imagePath: 'assets/images/heart.png',
            title: "Wishlist",
          ),
          _buildBottomBarButton(
            context,
            imagePath: 'assets/images/settings.png',
            title: "Settings",
          ),
        ],
      ),
    );
  }

  Column _buildBottomBarButton(
    BuildContext context, {
    required String imagePath,
    required String title,
    bool selected = false,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagePath,
          height: 40,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontWeight: selected ? FontWeight.w800 : FontWeight.w300,
              ),
        )
      ],
    );
  }
}
