import 'package:flutter/material.dart';
import 'package:goodwelchi/model/model.dart';
import 'package:goodwelchi/page/about_page.dart';
import 'package:goodwelchi/routes/routes.dart';

class Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: navButtons
          .map(
            (buttonData) => Padding(
              padding: const EdgeInsets.only(
                left: 8,
              ),
              child: GestureDetector(
                onTap: () {
                  buttonData.onPressed();
                },
                child: Text(
                  buttonData.title,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

List<NavButtonData> navButtons = [
  NavButtonData(
    title: 'Home',
    onPressed: () {},
  ),
  NavButtonData(
    title: 'About',
    onPressed: () {
      navigatorKey.currentState.pushNamed(
        AboutPage.routeName,
      );
    },
  ),
  NavButtonData(
    title: 'Works',
    onPressed: () {},
  ),
  NavButtonData(
    title: 'Contact',
    onPressed: () {},
  ),
];
