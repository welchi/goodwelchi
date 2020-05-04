import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:goodwelchi/main.dart';
import 'package:goodwelchi/model/model.dart';
import 'package:goodwelchi/page/about_page.dart';
import 'package:goodwelchi/page/works_page.dart';
import 'package:goodwelchi/routes/routes.dart';
import 'package:goodwelchi/util/util.dart';
import 'package:url_launcher/url_launcher.dart';

PreferredSizeWidget getNavigatorAppBar(BuildContext context) {
  return AppBar(
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    leading: SizedBox(
      height: 60,
      width: 60,
      child: Image.asset(
        'assets/images/logo.png',
      ),
    ),
    title: AutoSizeText(
      'GoodWelchi',
      style: Theme.of(context).textTheme.headline2,
      maxLines: 1,
    ),
    actions: ResponsiveLayout.getDeviceSize(context) == DeviceSize.mobile
        ? null
        : navButtons
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

Widget getNavigatorDrawer(BuildContext context) {
  if (ResponsiveLayout.getDeviceSize(context) == DeviceSize.mobile) {
    return Drawer(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: navButtons
              .map(
                (navButton) => ListTile(
                  title: Text(
                    navButton.title,
                  ),
                  onTap: () {
                    navButton.onPressed();
                  },
                ),
              )
              .toList()),
    );
  }
  return null;
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
    onPressed: () {
      launch(
        'mailto:welchizm+goodwelchi@gmail.com',
      );
    },
  ),
];
