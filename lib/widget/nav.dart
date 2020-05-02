import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  List<NavButtonData> navButtons = [
    NavButtonData(
      title: 'Home',
      onPressed: () {},
    ),
    NavButtonData(
      title: 'About',
      onPressed: () {},
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

class NavButtonData {
  const NavButtonData({
    @required this.title,
    @required this.onPressed,
  });
  final String title;
  final Function onPressed;
}
