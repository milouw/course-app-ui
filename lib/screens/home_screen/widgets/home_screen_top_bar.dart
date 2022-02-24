import 'package:course_app_ui/components/my_card.dart';
import 'package:course_app_ui/core/constants.dart';
import 'package:flutter/material.dart';

class HomeScreenTopBar extends StatelessWidget {
  const HomeScreenTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      onPressed: () {
        Navigator.pop(context);
      },
      color: Theme.of(context).colorScheme.primary,
      borderRadius: const BorderRadius.all(Radius.circular(32.0)),
      child: Padding(
        padding: defaultPadding,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Hello",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  "Ryan Anderson",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 50),

                // searchBar
                _buildSearchBar(context),
              ],
            ),
            Padding(
              padding: defaultPadding,
              child: Image.asset(
                'assets/images/bell.png',
                width: 32,
              ),
            )
          ],
        ),
      ),
    );
  }

  MyCard _buildSearchBar(BuildContext context) {
    return MyCard(
      padding: EdgeInsets.zero,
      borderRadius: const BorderRadius.all(Radius.circular(32.0)),
      child: Padding(
        padding: defaultPadding,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: "Search your topic",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: Colors.grey),
                ),
              ),
            ),
            Image.asset(
              'assets/images/search.png',
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
