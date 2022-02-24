import 'package:course_app_ui/components/my_button.dart';
import 'package:course_app_ui/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Welcome image
              Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Image.asset('assets/images/welcome_image.png'),
                ),
              ),

              // Welcome info
              Flexible(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(32.0),
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discover your next skill\nLearn anything you want!",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "Discover the things you want\nto learn and grow with them.",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      IntrinsicWidth(
                        child: MyButton(
                          child: const Text("Get Started"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
