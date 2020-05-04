import 'package:flutter/material.dart';
import 'package:goodwelchi/main.dart';
import 'package:goodwelchi/model/model.dart';
import 'package:goodwelchi/page/about_page.dart';
import 'package:goodwelchi/page/works_page.dart';
import 'package:goodwelchi/routes/routes.dart';

PreferredSizeWidget getNavigatorAppBar(BuildContext context) {
  return AppBar(
    leading: SizedBox(
      height: 60,
      width: 60,
      child: Image.asset(
        'assets/images/logo.png',
      ),
    ),
    title: Text(
      'GoodWelchi',
      style: Theme.of(context).textTheme.headline3,
    ),
    actions: navButtons
        .map(
          (buttonData) => Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 32,
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
          ),
        )
        .toList(),
  );
}

List<NavButtonData> navButtons = [
  NavButtonData(
    title: 'Home',
    onPressed: () {
      navigatorKey.currentState.pushNamed(
        TopPage.routeName,
      );
    },
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
    onPressed: () {
      navigatorKey.currentState.pushNamed(
        WorksPage.routeName,
      );
    },
  ),
  NavButtonData(
    title: 'Contact',
    onPressed: () {},
  ),
];
