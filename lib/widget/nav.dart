import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
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
