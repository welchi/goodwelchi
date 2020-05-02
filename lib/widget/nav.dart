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
    return const Text('ナビゲーション');
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
