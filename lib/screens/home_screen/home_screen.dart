import 'package:course_app_ui/screens/home_screen/widgets/home_screen_body.dart';
import 'package:course_app_ui/screens/home_screen/widgets/home_screen_bottom_bar.dart';
import 'package:course_app_ui/screens/home_screen/widgets/home_screen_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            // Top Bar
            HomeScreenTopBar(),
            // Body
            Expanded(
              child: SingleChildScrollView(
                child: HomeScreenBody(),
              ),
            ),
            // Bottom Bar
            HomeScreenBottomBar(),
          ],
        ),
      ),
    );
  }
}
